project_name         = "Vote-app Project"
vpc_cidr             = "10.0.0.0/16"
region               = "us-east-2"
private_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets_cidr  = ["10.0.101.0/24", "10.0.102.0/24"]

eks_cluster_name    = "vote-app-cluster"
eks_cluster_version = "1.29"
instance_type       = "t3.small"
ami_type            = "AL2_x86_64"
