output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.rds_instance.endpoint
}

output "rds_username" {
  description = "RDS master username"
  value       = aws_db_instance.rds_instance.username
}

output "rds_db_name" {
  description = "Database name"
  value       = aws_db_instance.rds_instance.name
}

