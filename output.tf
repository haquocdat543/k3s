#Output
output "Master1" {
  value = "ssh -i ~/${var.key_pair}.pem ec2-user@${aws_eip.Master1.public_ip}"
}
output "Worker1" {
  value = "ssh -i ~/${var.key_pair}.pem ec2-user@${aws_eip.Worker1.public_ip}"
}
output "Worker2" {
  value = "ssh -i ~/${var.key_pair}.pem ec2-user@${aws_eip.Worker2.public_ip}"
}
