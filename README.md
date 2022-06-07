# EC2 Custom TERRAFORM MODULE 

The Terraform module will create a standalone EC2 instance with custom user data & security group

## Pre Requisits
Pre-Reqs:
* Terraform 
* AWS CLI
* [AWS Account] [https://aws.amazon.com/]

## Steps
``` sh
1. Automate Server Provisioning
2. Configure security group
3. Run custom Installation Script
```

## How to use
```sh
module "shoetan-ec2" {
    #source = ./ec2
    security_group = 
}
```