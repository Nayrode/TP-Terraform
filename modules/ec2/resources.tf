data "aws_ami" "amazon_linux" {
    most_recent = true
    owners      = ["amazon"]

    filter {
        name   = "name"
        values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    }
}

resource "aws_instance" "ec2" {
    ami           = data.aws_ami.amazon_linux.id
    instance_type = var.type
    iam_instance_profile = var.nom_role
    user_data     = var.user_data

    tags = {
        Name = var.nom_instance
    }
}