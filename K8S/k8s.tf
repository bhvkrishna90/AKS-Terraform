## Private key for the kubernetes cluster ##
resource "tls_private_key" "key" {
  algorithm   = "RSA"
}

## Save the private key in the local workspace ##
resource "null_resource" "save-key" {
  triggers {
    key = "${tls_private_key.key.private_key_pem}"
  }
  provisioner "local-exec" {
    command = <<EOF
      mkdir -p ${path.module}\\.ssh
      echo "${tls_private_key.key.private_key_pem}" > ${path.module}\\.ssh\\id_rsa
      chmod 0600 ${path.module}\\.ssh\\id_rsa
EOF
  }
}

resource "azurerm_resource_group" "rgname" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

resource azurerm_network_security_group "nsg" {
  name                = "akc-1-nsg"
  location            = "${azurerm_resource_group.rgname.location}"
  resource_group_name = "${azurerm_resource_group.rgname.name}"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "akc-1-vnet"
  location            = "${azurerm_resource_group.rgname.location}"
  resource_group_name = "${azurerm_resource_group.rgname.name}"
  address_space       = ["10.1.0.0/16"]
}

resource "azurerm_subnet" "kube_subnet" {
  name                      = "akc-1-subnet"
  resource_group_name       = "${azurerm_resource_group.rgname.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg.id}"
  address_prefix            = "10.1.0.0/24"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name       = "akc-1"
  location   = "${azurerm_resource_group.rgname.location}"
  dns_prefix = "akc-1"

  resource_group_name = "${azurerm_resource_group.rgname.name}"

  linux_profile {
    admin_username = "adminuser"

    ssh_key {
      key_data = "${file("${var.ssh_public_key}")}"
    }
  }
  
  agent_pool_profile {
    name    = "agentpool"
    count   = "2"
    vm_size = "Standard_DS1_v2"
    os_type = "Linux"

    # Required for advanced networking
    vnet_subnet_id = "${azurerm_subnet.kube_subnet.id}"
  }

  service_principal {
    client_id     = "00000000-0000-0000-0000-000000000000"
    client_secret = "00000000000000000000000000000000"
  }
  
}