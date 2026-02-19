provider "aws" {
  region = var.region
}

module "networking" {
  source      = "./modules/networking"
  vpc_cidr    = var.vpc_cidr
  name_prefix = local.name_prefix
}

module "compute" {
  source        = "./modules/compute"
  ami           = var.ami
  instance_type = var.instance_type
  name_prefix   = local.name_prefix
}
