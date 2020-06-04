#-----compute/outputs.tf

output "server_id" {
  value = "${join(", ", aws_instance.tf_server.*.id)}"
}

# output "server_ip" {
#   value = "${join(", ", aws_instance.tf_server.*.public_ip)}"
# }

output "bastion_server_id" {
  value = "${join(", ", aws_instance.tf_bastion_server.*.id)}"
}

output "bastion_server_ip" {
  description = "Bastion Ip address"
  value       = "${join(", ", aws_instance.tf_bastion_server.*.public_ip)}"
}
