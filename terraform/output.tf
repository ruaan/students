output "lb_dns" {
  value = module.alb.this_lb_dns_name
}

output "db_endpoint" {
  value = module.db.this_db_instance_endpoint
}
