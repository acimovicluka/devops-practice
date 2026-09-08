provider "aws" {
  region = "eu-north-1"
}

resource "aws_security_group" "practice_sg" {
  name        = "terraform-practice-sg"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "practice_server" {
  ami                    = "ami-0c1ac8a41498c1a9c"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.practice_sg.id]

  tags = {
    Name = "terraform-practice-server"
  }
}