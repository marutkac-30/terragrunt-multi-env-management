terraform{
    source = "git::https://github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}

inputs = {
    environment = "Production"
    region_name = "us-east-2"
    public_az = ["us-east-2a", "us-east-2b"]
    private_az = ["us-east-2a", "us-east-2b"]
}