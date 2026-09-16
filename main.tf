module "networking" {
    source               = "./networking"
    vpc_cidr             = var.vpc_cidr
    vpc_name             = var.vpc_name
    cidr_public_subnet   = var.cidr_public_subnet
    eu_availability_zone = var.eu_availability_zone
    cidr_private_subnet  = var.cidr_private_subnet
}

module "security_group" {
    source              = "./security-groups"
    ec2_sg_name         = "SG for EC2 to enable SSH(22), HTTPS(443), HTTP(8080) and HTTP(80)"
    vpc_id              = module.networking.dev_proj_1_vpc_id
    ec2_jenkins_sg_name = "Allow port 8080 for Tower"
}

module "ansible_tower" {
    source                    = "./ansible-tower-deployment"
    ami                    = var.aws_instance_ami
    instance_type          = var.aws_ec2_instace_type
    tag_name               = "dev_proj_1_ansible_tower"
    public_key             = var.public_key
    subnet_id              = tolist(module.networking.dev_proj_1_public_subnets_ids)[0]
    sg_for_ansible_tower   = module.security_group.sg_ec2_ansible_tower_port_8080
    enable_public_ip_address = true
    # user_data_install_jenkins = file("user-data-install-jenkins.sh")
    key_name               = "dev_proj_1_ansible_tower_key"

}

# module "file_configration" {
#     source = "./ec2_tower_configration"
#     host_id = module.ansible_tower.dev_proj_1_ec2_instance_public_ip

#     # providers = {
#     #     ansible = ansible/ansible
#     # }
# }


output "module_path" {
    value = module.ansible_tower.dev_proj_1_ec2_instance_public_ip
}

output "root_path" {
    value = path.root
}

output "cwd_path" {
    value = path.cwd
}
