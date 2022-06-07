# EC2 Custom TERRAFORM MODULE 

The Terraform module will create a standalone EC2 instance with custom user data & security group
Uses a datasource to get latest RHEL or Ubuntu or Amazon Linux AMI.

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

## How to use: STEP 1
In main.tf

```sh
provider "aws" {
    # Manually Change the region
    region = "## YOUR REGION ##"
}
```

## How to use: STEP 2
In main.tf

```sh
module "ec2" {
    source = "./ec2" 
    # variables
    ec2_ami = "RHEL" or "UBUN" or "AMZL" # Choose between RHEL. UBUNTU or AMZ Linux
    ec2_instance_type = "t2.micro" or "t2.medium" etc #Enter instance type
    #key
    #tags

}
```