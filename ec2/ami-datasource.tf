data "aws_ami" "module-ami" {
    most_recent = true
    #owners = ["amazon"]

    filter {
       name = "name"
       values = [var.ami_name_abbrv[var.ec2_ami]]
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }
}