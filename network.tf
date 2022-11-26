# VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.name-prefix}"
  }
}

# Subnets : eks
resource "aws_subnet" "eks-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.eks_subnets_cidr_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}

resource "aws_subnet" "eks-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.eks_subnets_cidr_2
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}

resource "aws_subnet" "eks-subnet-3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.eks_subnets_cidr_3
  availability_zone       = var.availability_zone_3
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}

# Subnets : private - rds postgres
resource "aws_subnet" "rds-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnets_cidr_rds_1
  availability_zone       = var.availability_zone_1
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}

resource "aws_subnet" "rds-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnets_cidr_rds_2
  availability_zone       = var.availability_zone_2
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}

resource "aws_subnet" "rds-subnet-3" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.private_subnets_cidr_rds_3
  availability_zone       = var.availability_zone_3
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.name-prefix}"
  }
}