provider "aws" {
  region = var.region
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnet_ids      = ["subnet-xxxx", "subnet-yyyy"]
  vpc_id          = "vpc-xxxx"

  eks_managed_node_groups = {
    default = {
      desired_size = var.node_group_size
      max_size     = 3
      min_size     = 1
      instance_types = ["t3.medium"]
    }
  }
}

