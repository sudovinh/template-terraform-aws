# Main TF

# Save Terraform State to S3 
terraform {
  backend "s3" {
    bucket = "my-awesome-bucket-terraform-states"
    key    = "project.tfstate"
    region = "us-west-1"
  }
}
# Setup DNS
module "dns" {
  source = "./dns"
  config = var.dns
  # This line over here makes the aws outputs available on cloudflare module.
  outputs = {
    server_public_ip = module.aws.server_public_ip
  }
}

# Setup Infrastructure in AWS
module "aws" {
  source = "./aws"
  config = var.infra
  outputs = { }
}
# This makes the output variable from outside the module.
output "server_public_ip" {
  value = module.aws.server_public_ip
}