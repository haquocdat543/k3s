#Output
output "Master1" {
  value = "ssh -i ~/.ssh/${var.key_pair}.pem ubuntu@${aws_eip.Master1.public_ip}"
}
output "Worker1" {
  value = "ssh -i ~/.ssh/${var.key_pair}.pem ubuntu@${aws_eip.Worker1.public_ip}"
}
output "Worker2" {
  value = "ssh -i ~/.ssh/${var.key_pair}.pem ubuntu@${aws_eip.Worker2.public_ip}"
}
