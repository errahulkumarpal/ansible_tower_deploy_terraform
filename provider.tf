terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
        ansible = {
            version = "~> 1.0"
            source  = "ansible/ansible"
        }
    }
}

provider "ansible" {

}

provider "aws" {
    region  = var.aws_region

}