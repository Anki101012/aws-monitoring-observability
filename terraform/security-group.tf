### Public EC2 Security Group

resource "aws_security_group" "helix_cloud_public_sg" {
  name        = "helix_cloud_public_sg"
  description = "Used for Public EC2 instances"
  vpc_id      = aws_vpc.helix_cloud_vpc.id

  tags = {
    Name = "helix_cloud_public_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allowed_for_public_on_22" {
  security_group_id = aws_security_group.helix_cloud_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allowed_for_public_on_80" {
  security_group_id = aws_security_group.helix_cloud_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allowed_for_public_on_443" {
  security_group_id = aws_security_group.helix_cloud_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.helix_cloud_public_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

