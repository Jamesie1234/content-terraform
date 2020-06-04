
aws_region = "eu-west-2"

project_name = "robino-demo"

vpc_cidr = "10.123.0.0/16"

ami_id = "ami-0330ffc12d7224386"

public_cidrs = [
  "10.123.1.0/24",
  "10.123.2.0/24",
]

private_cidrs = [
  "10.123.3.0/24",
  "10.123.4.0/24",
]

accessip = "0.0.0.0/0"

key_name = "tf_app_key"

bastion_key_name = "bastion_key"

public_key_path = "/Users/robino/development/keys/id_rsa.pub"

server_instance_type = "t2.micro"

bastion_server_instance_type = "t2.micro"

instance_count         = 2
bastion_instance_count = 1
