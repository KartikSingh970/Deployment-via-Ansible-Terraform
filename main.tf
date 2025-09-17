resource "aws_instance" "web" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t3.small"
  key_name      = "Karrtik"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = "NodeApp-Server"
  }
}

