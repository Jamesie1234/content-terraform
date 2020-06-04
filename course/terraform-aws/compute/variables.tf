#-----compute/variables.tf

variable "key_name" {}

variable "public_key_path" {}

variable "private_subnet_ips" {
  type = "list"
}

variable "instance_count" {}

variable "ami_id" {}

variable "bastion_server_count" {}

variable "bastion_instance_type" {}

variable "instance_type" {}

variable "security_group" {}

variable "bastion_security_group" {}

variable "bastion_subnets" {
  type = "list"
}

variable "private_subnets" {
  type = "list"
}
