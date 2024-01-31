resource "aws_instance" "Master1" {
  ami               = var.ami_id
  instance_type     = "t3.small"
  availability_zone = "ap-northeast-1a"
  key_name          = var.key_pair

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.Master1.id
  }

  tags = {
    "Name" = "Master1"
  }
}
resource "aws_instance" "Worker1" {
  ami               = var.ami_id
  instance_type     = "t3.small"
  availability_zone = "ap-northeast-1a"
  key_name          = var.key_pair

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.Worker1.id
  }
  tags = {
    "Name" = "Worker1"
  }
}
resource "aws_instance" "Worker2" {
  ami               = var.ami_id
  instance_type     = "t3.small"
  availability_zone = "ap-northeast-1a"
  key_name          = var.key_pair

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.Worker2.id
  }
  tags = {
    "Name" = "Worker2"
  }
}

