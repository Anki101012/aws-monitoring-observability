resource "aws_key_pair" "helix_cloud_keypair" {
  key_name   = "helix_cloud_prod"
  public_key = file("helix_cloud_prod.pub")
}
