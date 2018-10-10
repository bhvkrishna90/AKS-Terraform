variable "client_id" {}
variable "client_secret" {}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "krishk8s"
}

variable cluster_name {
    default = "krishk8s"
}

variable resource_group_name {
    default = "azure-krishk8s"
}

variable location {
    default = "East US"
}
