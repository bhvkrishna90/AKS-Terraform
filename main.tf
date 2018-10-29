module "oms" {
  source = ".\\OMS"
  prefix = "${var.prefix}"
  resource_group_name = "${var.prefix}-k8sresources"
  location = "${var.location}"
}


module "k8s" {
  source = ".\\K8S"
  resource_group_name = "${var.prefix}-k8sresources"
  location = "${var.location}"
  cluster_name = "${var.cluster_name}"
  dns_prefix = "${var.dns_prefix}"
  admin_username = "${var.admin_username}"
  agent_count = "${var.agent_count}"
  client_id = "${var.client_id}"
  client_secret = "${var.client_secret}"
  client_secret = "${var.client_secret}"
  ssh_public_key = "${var.ssh_public_key}"
  omswsid =  "${module.oms.omswsid}"
}
