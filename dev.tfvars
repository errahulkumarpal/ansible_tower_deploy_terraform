# bucket_name = "dev_proj-1-jenkins"

vpc_cidr = "11.0.0.0/16"
vpc_name = "dev_proj_jenkins_eu_west_vpc_1"
cidr_public_subnet   = ["11.0.1.0/24", "11.0.2.0/24"]
cidr_private_subnet = ["11.0.3.0/24","11.0.4.0/24"]
eu_availability_zone = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]

# aws_instance_ami = "ami-0011550b539717e2a"
aws_instance_ami = "ami-0011550b539717e2a"
# aws_ec2_instace_type = "c5d.large"
aws_ec2_instace_type = "c7i-flex.large"
aws_region = "ap-south-1"

public_key = "MIIEogIBAAKCAQEAyk8nY2V7qa/4vO//rluFHQzYFVrcLNoXsATY4YpCGOZlSlCIK9G02vb3k22wjqXuT4GB3yeGNtBiferB2IzgJPaS0854baDobjDCyyaNaL8Yn4888QVP9y1YNE7D5jR3shs6Rp3cZpGfmYGG7h1Bmo7eV4a/WI8oT8Ls2k/SH/kik3biaIzx32bP1juYeeWS4f83hKHmt6iCYupHd7Uktpyn+ZpDR8iHheNOZOip+uPZvzxp4P46KT/G7aCz2qIwoqk/LhxJrIPOqlhc3yiwzBd32IB83cj0vPD58OX00mGcrEgnNtrgkSW+K5ltBKLgHaNg8BQsYsf6oD+Alj7wZwIDAQABAoIBAFRamLPLFrr0EqTE9TkAFAq+1kJhNjjFXucXvk6cVV8IgedwmLaco+pA243vSJTR/wHLoBkp475rOQYDonvmkXcYELSb/H7JfuCjGDWYh5HLTDsLgH+GlYccsxBsXyZXbiknTS8wlzt1MLTS2y3hqP8G3xJjrtkAJ/DJ9/Q3IAgQHE4DDO7dbCL93MUp2H4NsgA0DjBRfvWFCLWp1g+ZUgQeCfpHvlQA1MxBO2VAj69Z3s5suCaMbY7Vl4Xneu6FKEbUSd+0wgCc4q1xWZxUIwZ3VcfFU8v+zrAw3zXWi8BpeX4E9iF1V9U9d9v/4+fHGcMizxcsNlCiyjemOaiPHNECgYEA/Rb/hVt8j8CnB0w8VtH+DRXBG/l65GDC4R8wZf28Zye9pza60dd8cis+Z4K7/wIuUZOWvmnB9bbuyo+XJNN7fKFw8tZ4J58kxZSg3YXQUwQv7drmcTsiKYcfRE3w4ZA8T4rBzqUlQhOLL0gCGSIFVzA2Ngr/9gyimswyFhHm/YMCgYEAzKKtL22JPpwxDJTNa4PCbGRKafjXFcKKIuXBmlafCFd3UCCFid+tHQtxldLnig1JRQPpNdfpWzf1mnj9dzaqrV9BGQ9ZUeloOR9sEn3Ywakncp2VlxSaSjxmX1QYwPn115AMbLUNRrQdjhtpAuh9QXtodmdv28FUGIMf0nE5kE0CgYBbX6s/DWmqSMbE9rwuKECNntYKcIby3xBc0LLbj8EuiQWK0lKeoirW2U/9dRDEn5fzcdKRyoLxYGtUDIVoEUZbF7o8ojvdKjLPdrqhX8d3wWJAgLCEHvJVheg+89jMxxNPMGyKW8tY0M+GcXv4cPT2pnxcBJqmzacDNke6+hmoWwKBgBLQ2m/D+JyjK/dmL0U1hkkFJ7p6wPwlOSJgUd7pHBJeSIA7nUvCH17OUJFgJR4Sfqwz4durkK9sg87CVTwC8MqkOY4eVS4s8gJem0dP/wA/l3r4dmq/4Df3OcqGJwiHc01w11Ofiir4IMeSSaOU0P+WY1KPzD8+lYbzd5eYBZz5AoGATMMmG837n6irbwpAjADfNCZwzkcKKy3+8qz/xGviRCBxHRb3saGfimTL0Zs63Tq4DmP2fKl0Z5fh3UfnRPCH+Hlotq4Rpkan668Qr2sRzeWH6eGXFsU6f/p57fMkuPXd0lmC1m2OmsxdBja925ekolIu6n43ZWkcMEc93MCJQv8="

rhel_base_dir = "/home/ec2-user/"

file_name = "ansible-automation-platform-setup-2.4-16.tar.gz"
ansible_tower_key = "bjbkb"

# domain_name = "checking.com"