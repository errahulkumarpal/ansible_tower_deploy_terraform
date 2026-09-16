variable "host_id" {}
# variable "instance_type" {}
# variable "tag_name" {}
# variable "public_key" {}

output "ansible_output" {
    value = ansible_playbook.modify_file.ansible_playbook_stdout
}

resource "local_file" "output_config" {
    filename = "${path.cwd}/file_folder/combined_output.txt"
    content  = <<-EOT
        Instance IP: ${ansible_playbook.modify_file.ansible_playbook_stdout}
    EOT
}

# resource "ansible_host" "web_host" {
#     name   = var.host_id
#     groups = ["webservers"]

#     variables = {
#         ansible_host = var.host_id
#         ansible_user                 = "ec2-user"
#         ansible_ssh_private_key_file = "${path.cwd}/key/ansible-tower.pem"
#         # ansible_ssh_private_key_file = "~/.ssh/id_rsa"
#         ansible_python_interpreter = "/usr/bin/python3"
#     }
# }

# resource "ansible_playbook" "modify_file" {
#     playbook   = "${path.cwd}/file_folder/playbook.yaml"
#     name       = var.host_id
#     extra_vars = {
#         ansible_user = "ec2-user"
#     }
#     verbosity = 6

# }
