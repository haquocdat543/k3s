# Assign an elastic IP to the network interface created in step 7
resource "aws_eip" "Master1" {
  domain                    = "vpc"
}
resource "aws_eip" "Worker1" {
  domain                    = "vpc"
}
resource "aws_eip" "Worker2" {
  domain                    = "vpc"
}


