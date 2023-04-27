variable "region" {
  type    = string
  default = "us-east-1"
  region = var.region
}

variable "db_subnet" {
  type    = string
  default = "subnet-06d726ccbf0c6840e"
  db_subnet = var.db_subnet
}
resource "aws_db_instance" "backend01" {
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  name                   = var.db_instance_name
  username               = var.username
  password               = var.password
}
variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-06d726ccbf0c6840e"]
  subnet_id = var.subnet_id
}
