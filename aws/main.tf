locals {
  env  = "default"
  name = "bodam1234"
}

module "storage" {
  source = "./storage/"

  bucket_name = "${local.name}-terraform-repo"
  environment = local.env
}

module "lock" {
  source = "./lock/"

  environment     = local.env
  lock_table_name = "${local.name}-terraform-lock"
}