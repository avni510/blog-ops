variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
  version = "~> 1.33.0"
}

provider "template" {
  version = "~> 1.0.0"
}

provider "null" {
  version = "~> 1.0"
}
