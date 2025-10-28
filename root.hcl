generate "backend"{
    path = "s3-backend.tf"
    if_exists = "overwrite_terragrunt"
    contents = <<EOF

terraform {
    backend "s3"{
        bucket = "fordsaleang-terraform-state"  
        key   = "${path_relative_to_include()}/terraform.tfstate"
        region = "ap-southeast-1"
        encrypt = true
    }
}
EOF
}