locals {
  common_tags = {
    environment = var.environment
    project = var.project
    terraform = "true"
  }

  az_names = slice(data.aws_availability_zones.available.names,0,2)
}