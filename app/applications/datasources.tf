##################################################################################
# DATA SOURCES
##################################################################################


data "terraform_remote_state" "networking" {
  backend = "s3"
  config = {
    bucket = "tf-backend-16170"
    key    = "env:/${terraform.workspace}/networking/terraform.tfstate"
    region = "eu-central-1"
  }
}


data "aws_ami" "aws_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-20*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
