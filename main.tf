terraform {
  cloud {
    organization = "rio-hashicorp"

    workspaces {
      name = "nomad-environment"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "nomad-server" {
  ami           = "ami-023e152801ee4846a" #Deploy Amazon Linux 2023 AMI
  instance_type = "t2.micro"
  key_name      = "key1"
  #count = 3

  tags = {
    Name = "consul-server"
  }
}
/*
resource "aws_instance" "consul-client" {
  ami           = "ami-023e152801ee4846a" #Deploy Amazon Linux 2023 AMI
  instance_type = "t2.micro"
  key_name      = "key1"
  #count = 3

  tags = {
    Name = "consul-client"
  }
}
*/