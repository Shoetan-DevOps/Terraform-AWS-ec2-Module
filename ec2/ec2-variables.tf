# Get module input for choose instanc type
variable "ec2_instance_type" {
    type = string
}

# Get Module input for key file
variable "ec2_key_file" {
    type = string
}

# Get module input for AMI abbrev that will be mapped to AMI Name 
variable "ec2_ami" {
     type = string
}

# maps "ec2-ami" to aws ami name for datasource
variable "ami_name_abbrv" {
    type = map
    default = {
        "RHEL" = "RHEL_HA-8.5*"
        "UBUN" = "*ubuntu-jammy-22.04*"
        "AMZL" = "Amazon Linux 2*"
    }
}

# OUTPUT instance ID so it can be outputed in module
output "ec2_instance_id" {
    description = "instance id"
    value = aws_instance.ec2_instance.id
}

# OUTPUT instance IP so it can be outputed in module
output "ec2_instance_ip" {
    description = "public IP"
    value = aws_instance.ec2_instance.public_ip
}

#test data source abbrev
output "test-abbrev" {
    description = "TEST DATA SRC ABBREV ==>"
    value = var.ami_name_abbrv[var.ec2_ami]
}