## Storing Terraform state file in an s3 bucket

terraform {
  backend "s3" {
    bucket = "vote-app-store"
    key    = "eks-state/terraform.tfstate"
    region = "us-east-2"
  }
}
