provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "example" {
  name        = "aws_security_group_rule"
  description = "Example security group"

  # Define inbound rules
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Define outbound rules
}
