data "aws_ami" "joindevops" {
    owners       = ["973714476881"]
    most_recent = true

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data aws_instance "mongodb" {
    instance_id = "i-0660a578242ba2da7"
}

output "mongodb" {
    value = data.aws_instance.mongodb.public_ip
  
}