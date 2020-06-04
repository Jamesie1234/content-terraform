provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.aws_region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-demo-state-1234"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-2"
  }
}

# Deploy Storage Resource
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

# Deploy Networking Resources

module "networking" {
  source        = "./networking"
  vpc_cidr      = "${var.vpc_cidr}"
  public_cidrs  = "${var.public_cidrs}"
  private_cidrs = "${var.private_cidrs}"
  accessip      = "${var.accessip}"
}

# Deploy Compute Resources

module "compute" {
  source                 = "./compute"
  bastion_server_count   = "${var.bastion_instance_count}"
  instance_count         = "${var.instance_count}"
  ami_id                 = "${var.ami_id}"
  key_name               = "${var.key_name}"
  public_key_path        = "${var.public_key_path}"
  instance_type          = "${var.server_instance_type}"
  bastion_instance_type  = "${var.bastion_server_instance_type}"
  private_subnets        = "${module.networking.private_subnets}"
  bastion_subnets        = "${module.networking.public_subnets}"
  security_group         = "${module.networking.bastion_sg}"
  bastion_security_group = "${module.networking.private_sg}"
  private_subnet_ips     = "${module.networking.private_subnet_ips}"
}
