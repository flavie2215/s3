variable "aws_region" {
  type = string
  default = "us-east-1"
}

provider "aws" {
  region = var.aws_region
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}
  instance_type = var.instance_type

key_name      = "terraform"

variable "vpc_id" {
  type = string
  default = "vpc-0dfc27680737a6d35"
}
  vpc_id = var.vpc_id

variable "subnet_id" {
  type = string
  default = "subnet-0be9daef1a4756035"
  subnet_id = [var.subnet_id]
}

common_tags = {
  "AssetID"       = "2560"
  "AssetName"     = "Insfrastructure"
  "Teams"         = "DEL"
  "Environment"   = "dev"
  "Project"       = "alpha"
  "CreateBy"      = "Terraform"
  "cloudProvider" = "aws"
}