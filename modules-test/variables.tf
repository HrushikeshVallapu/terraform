variable "tags" {
  default = {
    Name = "roboshop-cart"
    environment="dev"
  }
}

variable "sg_ids" {
  default = ["sg-04163965b6ba18d34"]
}

variable "instance_type" {
  default = "t3.micro"
}