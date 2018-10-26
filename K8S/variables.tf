variable "client_id" {
    description = "clinet id of service principal"
}
variable "client_secret" {
    description = "clinet secret of service principal"
}

variable "agent_count" {
    description = "Enter number of agents required"
}

variable "ssh_public_key" {
    description = "Enter public Key Path"
}

variable "dns_prefix" {
    description = "Enter dns prefix for cluster"
}

variable cluster_name {
    description = "Enter cluster name"
}

variable resource_group_name {
    description = "Enter Azure resource group name"
}

variable location {
    description = "Enter Location to deploy Azure resources"
}

variable admin_username {
    description = "Enter admin user name"
}

variable "omswsid" {
    description = "OMS Workspace ID"
  
}

