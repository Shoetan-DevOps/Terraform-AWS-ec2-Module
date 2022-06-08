resource "aws_instance" "ec2_instance" {
    ami = data.aws_ami.module-ami.id
    instance_type = var.ec2_instance_type
    key_name = var.ec2_key_file
}