terraform{
    source = "git::https://github.com/sudheerduba/aws-vpc-network-terraform.git//modules/vpc?ref=v1.1.0"
}

include "root" {
  path = find_in_parent_folders("root.hcl")
}
  
inputs = {
    region_name = "ap-southeast-1"
    public_az = ["ap-southeast-1a", "ap-southeast-1b"]
    private_az = ["ap-southeast-1a", "ap-southeast-1b"]
}