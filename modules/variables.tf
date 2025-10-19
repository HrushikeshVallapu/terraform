variable "ami_id" {
  default = "ami-0360c520857e3138f"
  type = string
}

variable "instance_type" {
  default = "t3.micro"
  type = string

  validation{
        condition = contains(["t3.micro","t3.small","t3.medium"],var.instance_type)
        error_message = "valid values for instance_type are t3.micro,t3.small,t3.medium"
    }
}

variable "sg_ids" {
  type = list
}

variable "tags" {
  type = map
}