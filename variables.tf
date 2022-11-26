variable "name-prefix" {
  type    = string
  default = "eks-rds"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "createEks" {
  type    = bool
  default = true
}

variable "createRds" {
  type    = bool
  default = true
}

variable "dbengine" {
  type    = string
  default = "postgres"
}

variable "availability_zone_1" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zone_2" {
  type    = string
  default = "us-east-1b"
}


variable "availability_zone_3" {
  type    = string
  default = "us-east-1c"
}

variable "vpc_cidr" {
  type    = string
  default = "172.16.0.0/16"
}

variable "eks_subnets_cidr_1" {
  type    = string
  default = "172.16.1.0/24"
}

variable "eks_subnets_cidr_2" {
  type    = string
  default = "172.16.2.0/24"
}

variable "eks_subnets_cidr_3" {
  type    = string
  default = "172.16.3.0/24"
}

variable "private_subnets_cidr_rds_1" {
  type    = string
  default = "172.16.4.0/24"
}

variable "private_subnets_cidr_rds_2" {
  type    = string
  default = "172.16.5.0/24"
}

variable "private_subnets_cidr_rds_3" {
  type    = string
  default = "172.16.6.0/24"
}