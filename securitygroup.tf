provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  # Define inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.0/24"]
  }

  # Define outbound rules
}
