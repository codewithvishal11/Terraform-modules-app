# key pair (login to the instance using this key pair)

resource "aws_key_pair" "deployer_key" {
  key_name   = "${var.env}-infra-app-key"
  public_key = "terra-key-ec2.pub"

  tags = {
    Environment = var.env
  }
}

# VPC & Security group

resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "my_security_group" {
  name        = "${var.env}-infra-app-security-group"
  description = "this will add a TF generated security group to the default VPC"
  # vpc_id      = aws_default_vpc.default.id # interpolation to get the default VPC ID

  # inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "ssh open to the hole world"

  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "http open to the whole world"
  }

  # outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound traffic"


  }

  tags = {
    Name        = "${var.env}-infra-app-security-group"
    Environment = var.env
  }
}
# EC2 instance

resource "aws_instance" "my_ec2_instance" {
  count = var.instance_count

  depends_on = [aws_security_group.my_security_group]

  key_name        = aws_key_pair.deployer_key.key_name
  security_groups  = [aws_security_group.my_security_group.name]
  instance_type    = var.ec2_instance_type
  ami              = var.ec2_ami_id # ubuntu




  root_block_device {
    volume_size = var.env == "prd" ? 20 : 10
    volume_type = "gp2"
  }

  tags = {
    Name        = "${var.env}-infra-app-instance"
    Environment = var.env
  }
}
