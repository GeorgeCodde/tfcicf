## Move this backend file to m3 when migrating state
terraform {
  backend "s3" {
    bucket = "tf-backend-xxxxxx"
    key    = "networking/terraform.tfstate"
    region = "eu-central-1"

    dynamodb_table = "tf-backend-locks-xxxxx"
    encrypt        = true
  }
}


