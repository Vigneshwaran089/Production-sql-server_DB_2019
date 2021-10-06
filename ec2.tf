#######################
# PROVIDERS
#######################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "s3" {
    bucket = "aws-sandbox-tf-767090234737-ik9421217"
    key = "aws-dev-bastion-drift-fix.tfstate"
    region = "us-west-2"
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region = "us-west-2"
}

#######################
# RESOURCES
#######################
resource "aws_instance" "bastion" {
  ami           = "XXXXXX"
  instance_type = "XXXXXXX"
  #vpc_id        = "XXXXXXX"
  subnet_id     = "XXXXXX"
  key_name      = "XXXXXX"
  vpc_security_group_ids = [aws_security_group.cci-bastion-1.id]
  tags = {
    Name  = "cci-ik9421217-bastion-1"
    Terraform   = "true"
    Environment = "dev"
  }
}

####################
# OUTPUT
#####################

/* output "aws_instance_id" {
  value = aws_instance.bastion.id
} */