terraform{
    source = "git::https://github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
    environment = "Staging"
    region_name = "us-east-1"
    public_az = ["us-east-1a", "us-east-1b"]
    private_az = ["us-east-1a", "us-east-1b"]
}