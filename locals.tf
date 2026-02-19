locals {
  environment = terraform.workspace
  name_prefix = "app-${local.environment}"
}
