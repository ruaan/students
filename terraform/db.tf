module "db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 2.0"

  identifier = "${var.name}db"

  engine              = "mysql"
  engine_version      = "5.7.19"
  instance_class      = var.db_instance_type
  allocated_storage   = 5
  publicly_accessible = false

  name     = "${var.name}db"
  username = var.db_username
  password = var.db_password
  port     = "3306"

  iam_database_authentication_enabled = false

  vpc_security_group_ids = [module.sg_db.this_security_group_id]

  maintenance_window = "Mon:00:00-Mon:03:00"
  backup_window      = "03:00-06:00"

  tags = var.tags

  # DB subnet group
  subnet_ids = module.vpc.private_subnets

  # DB parameter group
  family = "mysql5.7"

  # DB option group
  major_engine_version = "5.7"

  # Snapshot name upon DB deletion
  final_snapshot_identifier = "${var.name}-db"

  # Database Deletion Protection
  deletion_protection = false
}
