resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = var.ec2-tags

  
  provisioner "local-exec" {
    command = "echo  ${self.private_ip} > inventory"
  }

  provisioner "local-exec" {
    when = destroy
    command = "echo  'instance is destroyed' "
  }
  
    connection {
      type        = "ssh"
      user        = "ec2-user" # Or appropriate user for your AMI
      password = "DevOps321"
      host        = self.public_ip
    }

    provisioner "remote-exec" {
      inline = [ 
        "sudo dnf install nginx -y",
        "sudo systemctl start nginx ",
       ]
    }


    provisioner "remote-exec" {
      when = destroy
      inline = [ 
        "sudo systemctl stop nginx ",
       ]
    }
  
}



resource "aws_security_group" "allow_all" {
  # ... other configuration ...
    name = var.sg_name
    description = var.sg_description

    ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = var.sg_tags
}