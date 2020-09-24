module "asg" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"

  name = "${var.name}-asg"


  # Launch configuration
  lc_name = "${var.name}-lc"

  image_id          = var.ami
  instance_type     = var.ec2_instance_type
  security_groups   = [module.sg_app.this_security_group_id]
  target_group_arns = module.alb.target_group_arns

  ebs_block_device = []

  root_block_device = [
    {
      volume_size = "20"
      volume_type = "gp2"
    },
  ]

  # Auto scaling group
  asg_name                  = "${var.name}-asg"
  vpc_zone_identifier       = module.vpc.public_subnets
  health_check_type         = "EC2"
  min_size                  = 2
  max_size                  = 2
  desired_capacity          = 2
  wait_for_capacity_timeout = 0
  key_name                  = var.key_name

  tags_as_map = var.tags

  user_data = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo amazon-linux-extras install docker -y
    sudo yum install docker -y
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    sudo docker run -p 80:1337 -e sails_datastores__default__url=mysql://${var.db_username}:${var.db_password}@${module.db.this_db_instance_endpoint}/studentsdb -d ruaan/students node app.js
    EOF
}
