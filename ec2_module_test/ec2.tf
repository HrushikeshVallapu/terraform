module "ec2" {
  source = "../ec2_module"
  sg_id = var.sg_id
  instance_type = var.instance_type
  ec2_tags = var.ec2_tags

}