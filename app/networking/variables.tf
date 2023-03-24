##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  default = "eu-central-1"
}

variable "cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_count" {
  type    = number
  default = 2
}
