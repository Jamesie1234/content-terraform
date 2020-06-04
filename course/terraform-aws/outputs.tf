#----root/outputs.tf-----

#----storage outputs------

output "bucket_name" {
  value = "${module.storage.bucketname}"
}

#---Networking Outputs -----

output "public_subnets" {
  value = "${module.networking.public_subnets}"
}

output "subnet_IPs" {
  value = "${module.networking.subnet_ips}"
}

output "bastion_security_group" {
  value = "${module.networking.bastion_sg}"
}

#---Compute Outputs ------

output "public_instance_IDs" {
  value = "${module.compute.bastion_server_id}"
}

output "private_instance_IDs" {
  value = "${module.compute.server_id}"
}

output "public_instance_IPs" {
  value = "${module.compute.bastion_server_ip}"
}
