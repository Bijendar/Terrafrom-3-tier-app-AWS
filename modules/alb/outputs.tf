output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "alb_url" {
  description = "URL of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

