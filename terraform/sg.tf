module "sg_app" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${var.name}-app-sg"
  description = "Security group for ${var.name} application"
  vpc_id      = module.vpc.vpc_id

  tags = var.tags

  ingress_with_cidr_blocks = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]

  egress_with_cidr_blocks = [
    {
      rule = "all-all"
    },
  ]
}

module "sg_db" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${var.name}-db-sg"
  description = "Security group for ${var.name} database"
  vpc_id      = module.vpc.vpc_id

  tags = var.tags

  ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = "10.0.0.0/8"
    },
  ]

  egress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = "10.0.0.0/8"
    },
  ]
}
