## Move this backend file to m3 when migrating state
terraform {
  backend "s3" {
    bucket = "tf-backend-16170"
    key    = "networking/terraform.tfstate"
    region = "eu-central-1"

    dynamodb_table = "tf-backend-locks-16170"
    encrypt        = true
  }
}


