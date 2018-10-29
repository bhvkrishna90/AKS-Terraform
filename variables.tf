variable "client_id" {
    description = "clinet id of service principal"
    default = "61e1a624f050e6f277"
}

variable "client_secret" {
    description = "clinet secret of service principal"
    default = "RvJsEvcYpqcjcJbw="
}
variable "agent_count" {
    description = "Enter number of agents required"
    default = 3
}

variable "ssh_public_key" {
    description = "Enter public Key Path"
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    description = "Enter dns prefix for cluster"
    default = "krishk8s"
}

variable cluster_name {
    description = "Enter cluster name"
    default = "krishk8s"
}

variable prefix {
    description = "Enter Azure resource group name"
    default = "krish"
}

variable location {
    description = "Enter Location to deploy Azure resources"
    default = "East US"
}

variable admin_username {
    description = "Enter admin user name"
    default = "adminuser"
}
