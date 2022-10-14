module "ec2"{
  source = "./ec2"
  SG_ID_FROM_MODULE = "module.vpc.vpc_id"
}

module "sg"{
  source = "./Security_group"
}

