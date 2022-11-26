// https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest?tab=inputs
module "eks" {
  source                      = "terraform-aws-modules/eks/aws"
  version                     = "~> 18.31"
  create                      = var.createEks
  vpc_id                      = aws_vpc.vpc.id
  cluster_name                = "${var.name-prefix}-eks-cluster"
  subnet_ids                  = [aws_subnet.eks-subnet-1.id, aws_subnet.eks-subnet-2.id, aws_subnet.eks-subnet-3.id]
  iam_role_name               = "${var.name-prefix}-iam-role"
  create_cloudwatch_log_group = false
  tags = {
    Name = "${var.name-prefix}"
  }
}