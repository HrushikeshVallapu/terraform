resource "aws_instance" "this" {
  ami           = var.ami_id # left and right side names no need to be same
  instance_type = var.instance_type
  vpc_security_group_ids = var.sg_id
  
  tags = var.ec2_tags
}