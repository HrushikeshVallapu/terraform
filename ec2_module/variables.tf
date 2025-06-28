variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
    validation {
    condition     = contains(["t2.micro", "t3.micro", "t3.small"], var.instance_type)
    error_message = "Valid values for instance_type are: (t2.micro, t3.micro, t3.small)."
  } 
}

variable "sg_id" {
  type = list
}

variable "ec2_tags" {
  type = map
}