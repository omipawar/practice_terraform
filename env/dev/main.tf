module "security_group" {
  source         = "../../modules/security group"
  sg_name        = var.sg_name
  sg_description = var.sg_description
  vpc_id         = var.vpc_id
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  security_group_id = module.security_group.sg_id
  instance_name     = var.instance_name
  environment       = var.environment
}
