module "ec2" {
  source = "../modules"
  instance_type = var.instance_type
  sg_ids = var.sg_ids
  tags = var.tags
}