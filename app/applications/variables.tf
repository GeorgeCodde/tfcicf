
variable "region" {
  default = "eu-central-1"
}



# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "rds_username" {
  default     = "ddtuser"
  description = "User name"
}

variable "rds_password" {
  default     = "TerraformIsNumber1!"
  description = "password, provide through your ENV variables"
}
