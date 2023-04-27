variable "common_tags" {
  type = map(any)
  default = {
    "AssetID"       = "2560"
    "AssetName"     = "Insfrastructure"
    "Teams"         = "DEL"
    "Environment"   = "prod"
    "Project"       = "alpha"
    "CreateBy"      = "Terraform"
    "cloudProvider" = "aws"
  }
}
variable "username" {
  type    = string
  default = "admin"
}


variable "password" {
  type      = string
  sensitive = true
  default   = "TZ3nzqeMYgrsp3EHuybaesDxcP6vVcjawrELpJjr"
}