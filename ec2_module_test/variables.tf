variable "ec2_tags" {
  default = {
        Name = "roboshop-cart"
        Terraform = "true"
        Environment = "dev"
    }
}
variable "sg_id" {
  default = ["sg-0142341bd063dfed3"]
}

variable "instance_type" {
  default = "t3.micro"
}