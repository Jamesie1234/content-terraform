variable "aws_region" {}
variable "access_key" {}
variable "secret_key" {}
variable "ami_id" {}

#------ storage variables

variable "project_name" {}

#-------networking variables

variable "vpc_cidr" {}

variable "public_cidrs" {
  type = "list"
}

variable "private_cidrs" {
  type = "list"
}

variable "accessip" {}

#-------compute variables

variable "key_name" {}
variable "bastion_key_name" {}
variable "public_key_path" {}

variable "server_instance_type" {}

variable "bastion_server_instance_type" {}

variable "instance_count" {
  default = 1
}

variable "bastion_instance_count" {
  default = 1
}
