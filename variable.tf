variable "aws_region" {
    description = "defind aws region"
    type = string
}

variable "aws_instance_ami" {
    description = "define aws instace"
    type = string
}

variable "aws_ec2_instace_type" {
    description = "Instance size type"
    type = string
}

variable "vpc_cidr" {
    description = "VPC CIDR block"
    type = string
}

variable "vpc_name" {
    description = "VPC Name"
    type = string
}

variable "cidr_public_subnet" {
    description = "Public Subnet CIDR block"
    type = list(string)
}

variable "cidr_private_subnet" {
    description = "Private Subnet CIDR block"
    type = list(string)
}

variable "eu_availability_zone" {
    description = "Availability Zone"
    type = list(string)
}

variable "public_key" {
    description = "Public Key for SSH access"
    type = string
}

variable "rhel_base_dir" {
    description = "The target directory on the RHEL server"
    type        = string
    # default     = "/home/ec2-user/"

}

variable "file_name" {
    description = "Ansible plateform download file name"
    type = string
}

variable "ansible_tower_key" {
    description = "ansible tower key to active trail period"
    type = string
}

# variable "host_id" {
#     description = "ansible host id using to connect mechine"
#     type = string
# }