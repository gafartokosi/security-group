resource "aws_security_group" "my-sg" {
  name        = "my-sg"
  description = "my-sg inbound traffic"

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = var.port_1
      to_port          = var.port_1
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      description      = "SSH from VPC"
      from_port        = var.port_3
      to_port          = var.port_3
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    },

    {
      description      = "TLS2 from VPC"
      from_port        = var.port_2
      to_port          = var.port_2
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "my-sg"
  }
}
