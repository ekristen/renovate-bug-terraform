module "ssh_key_pair" {
  source                = "git::github.com/cloudposse/terraform-aws-key-pair?ref=0.20.0"
  ssh_public_key_path   = "./secrets"
  generate_ssh_key      = "true"
  private_key_extension = ".pem"
  public_key_extension  = ".pub"
}

module "egress_subnets" {
  source            = "git::https://github.com/cloudposse/terraform-aws-named-subnets.git?ref=0.9.2"
  subnet_names      = ["egress1"]
  max_subnets       = 1
  vpc_id            = "vpc-blah"
  cidr_block        = "10.0.0.0/16"
  type              = "public"
  igw_id            = "igw-blah"
  availability_zone = "us-east-2"
  nat_enabled       = true
}
