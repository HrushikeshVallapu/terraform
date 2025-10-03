variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
 
  default = "t3.micro"
}

variable "ec2-tags" {
  default = {
    name = "roboshop"
    purpose = "variables-demo"
  }
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_description" {
  default = "allowing all ports from internet"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
    type = number
  default = 0
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow-all"
  }
}

variable "environment" {
  default = "prod"
}
variable "instances" {
  # default = {
  #   mongoDB = "t3.micro"
  #   redis = "t3.micro"
  #   mysql = "t3.small"
  #   rabbitmq = "t3.micro"
  # }
  default = [
    "mongoDB",
    "redis",
    "mysql",
    "rabbitmq"
  ]
    
}


variable "hostedzone_id" {
  default = "Z06633071XX7HF3WWN7FZ"
}

variable "domain_name" {
  default = "buymebot.shop"
}