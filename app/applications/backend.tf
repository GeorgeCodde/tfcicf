##################################################################################
# BACKENDS
##################################################################################

terraform {
  backend "s3" {
    bucket = "tf-backend-16170"
    key    = "applications/terraform.tfstate"
    region = "eu-central-1"

    dynamodb_table = "tf-backend-locks-16170"
    encrypt        = true
  }
}