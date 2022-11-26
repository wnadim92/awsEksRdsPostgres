// https://registry.terraform.io/modules/terraform-aws-modules/rds/aws/latest?tab=inputs
module "rds" {
  source                 = "terraform-aws-modules/rds/aws"
  version                = "~> 5.1"
  identifier             = "${var.name-prefix}-${var.dbengine}-db"
  db_subnet_group_name   = "${var.name-prefix}-db-subnet-group"
  apply_immediately      = true
  create_db_instance     = var.createRds
  create_db_subnet_group = true
  create_random_password = false
  db_name                = "${var.dbengine}db"
  username               = var.dbengine
  password               = "${var.dbengine}-pwd"
  engine                 = var.dbengine
  engine_version         = "14.1"
  family                 = "postgres14"
  allocated_storage      = "20"
  major_engine_version   = "14"
  instance_class         = "db.t3.micro" # db.t3.micro, and db.t4g.micro 
  subnet_ids             = [aws_subnet.rds-subnet-1.id, aws_subnet.rds-subnet-2.id, aws_subnet.rds-subnet-3.id]
  storage_encrypted      = false
  copy_tags_to_snapshot  = true
  skip_final_snapshot    = true
  tags = {
    Name = "${var.name-prefix}"
  }
  db_subnet_group_tags = {
    Name = "${var.name-prefix}"
  }
  db_instance_tags = {
    Name = "${var.name-prefix}"
  }
  db_option_group_tags = {
    Name = "${var.name-prefix}"
  }
  db_parameter_group_tags = {
    Name = "${var.name-prefix}"
  }
}