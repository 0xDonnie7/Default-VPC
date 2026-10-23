#calls the module

module "vpc" {
  source = "./modules/vpc"

  name     = "${var.project}-${var.environment}"
  vpc_cidr = var.vpc_cidr
}
