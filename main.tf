module "ssh_key_pair" {
  source                = "git::github.com/cloudposse/terraform-aws-key-pair?ref=0.18.2"
  ssh_public_key_path   = "./secrets"
  generate_ssh_key      = "true"
  private_key_extension = ".pem"
  public_key_extension  = ".pub"
}
