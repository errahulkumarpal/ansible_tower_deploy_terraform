# modules/file_configration/terraform.tf

terraform {
    required_providers {
        ansible = {
        source = "ansible/ansible"
        }
    }
}
