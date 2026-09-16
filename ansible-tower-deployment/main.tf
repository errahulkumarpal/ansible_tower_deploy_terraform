variable "ami" {}
variable "instance_type" {}
variable "tag_name" {}
variable "public_key" {}
variable "subnet_id" {}
variable "sg_for_ansible_tower" {}
variable "enable_public_ip_address" {}
variable "user_data_install_jenkins" {
    default = ""
}
variable "key_name" {}

output "jenkins_ec2_instance_ip" {
    value = aws_instance.ansible_tower_ec2_instance_ip.id
}

output "dev_proj_1_ec2_instance_public_ip" {
    value = aws_instance.ansible_tower_ec2_instance_ip.public_ip
}

resource "aws_eip" "app" {
    domain = "vpc"

    tags = {
        Name = "ansible"
    }
}

resource "aws_instance" "ansible_tower_ec2_instance_ip" {
    ami           = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.tag_name
    }
    key_name                    = "ansible-tower"
    subnet_id                   = var.subnet_id
    vpc_security_group_ids      = [var.sg_for_ansible_tower]
    associate_public_ip_address = var.enable_public_ip_address


    provisioner "file" {
        source      = "${path.cwd}/key/ansible-tower.pem"
        destination = "/home/ec2-user/ansible-tower.pem"
    }

    provisioner "file" {
        source      = "${path.cwd}/file_folder/ansible-automation-platform-setup-2.4-16.tar.gz"
        destination = "/home/ec2-user/ansible-automation-platform-setup-2.4-16.tar.gz"

    }

    # The Connection Block tells Terraform how to SSH in to transfer the file
    connection {
        type        = "ssh"
        user        = "ec2-user" # Default user varies by OS (e.g., 'ec2-user' for Amazon Linux, 'ubuntu' for Ubuntu)
        private_key = file("${path.cwd}/key/ansible-tower.pem") # Path to your local private key file
        host        = self.public_ip # Uses the public IP of the newly created instance
    }
    # Base64 encode the rendered template for EC2 user_data
    user_data = base64encode(templatefile("${path.cwd}/ansible_tower_script/script.tpl", {
        file_name   = "var.file_name"
        current_dir = path.cwd
    }))

}


resource "local_file" "ansible_inventory" {
    filename = "${path.cwd}/file_folder/inventory.ini"

    content = <<-EOT
        [rhel]
        rhel01 ansible_host=${aws_instance.ansible_tower_ec2_instance_ip.public_ip} ansible_user=ec2-user ansible_ssh_private_key_file=${path.cwd}/key/ansible-tower.pem
    EOT
}



# # Dynamically generate the Ansible inventory configuration
# resource "local_file" "ansible_inventory" {
#     content = templatefile("${path.cwd}/file_folder/hosts.tftpl",
#         {
#         web_instances = [
#             for i in aws_instance.ansible_tower_ec2_instance_ip : {
#             name      = i.tags.Name
#             public_ip = i.public_ip
#             }
#         ]
#         ssh_user     = "ec2-user"
#         ssh_key_path = "${path.cwd}/key/ansible-tower.pem"
#         }
#     )
#     filename = "${path.module}/file_folder/hosts.ini"
# }

# resource "aws_key_pair" "ansible_tower_ec2_instance_public_key" {
#     key_name   = "ansible-tower"
#     public_key = file("key/ansible-tower.pem") # Path to your local public key
# }