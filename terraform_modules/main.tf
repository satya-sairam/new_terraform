module "ec2"{
  depends_on = [module.sg]
  source = "./ec2"
  SG_ID_FROM_MODULE = module.sg.sg_id
}

module "sg"{
  source = "./Security_group"
}
#testing
