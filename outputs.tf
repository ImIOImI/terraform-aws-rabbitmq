output "rabbitmq_elb_dns" {
  value = aws_elb.elb.dns_name
}

output "rabbitmq_elb_name" {
  value = aws_elb.elb.name
}

output "rabbitmq_elb_zone_id" {
  value = aws_elb.elb.zone_id
}

output "admin_user" {
  value = var.admin_user
}

output "admin_password" {
  value     = var.admin_password
  sensitive = true
}

output "rabbit_user" {
  value = var.rabbit_user
}

output "rabbit_password" {
  value     = var.rabbit_password
  sensitive = true
}

output "secret_cookie" {
  value     = var.secret_cookie
  sensitive = true
}

//output "rendered_template" {
//  value = data.template_file.cloud-init.rendered
//}

