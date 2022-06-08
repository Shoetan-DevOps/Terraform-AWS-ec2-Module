terraform {
    required_version = "~> 1.2"
    required_providers {
        aws = {
            version = "~> 3.0"
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    # Manually Change the region
    region = "us-east-2" ## CHANGE t
}

module "ec2" {
    source = "./ec2"
    # variables
    ec2_ami = "AMZL"
    ec2_instance_type = "t2.micro"
    ec2_key_file = "terraform"
}

output "show_ID" {
    value = module.ec2.ec2_instance_id
}

output "show_IP" {
    value = module.ec2.ec2_instance_ip
}

output "show_test" {
    description = "test vars passed to map =>"
    value = module.ec2.test-abbrev
}