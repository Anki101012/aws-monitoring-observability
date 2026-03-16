output "vpc_id" {
  value = aws_vpc.helix_cloud_vpc.id
}

output "public_ec2_public_ip" {
  value = aws_instance.public_ec2.public_ip
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}
