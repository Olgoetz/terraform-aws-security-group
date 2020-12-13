output "this_sg_id" {
  value       = aws_security_group.this.id
  description = "ID of the SG."
}

output "this_sg_name" {
  value       = aws_security_group.this.name
  description = "Name of the SG."
}

output "this_sg_arn" {
  value       = aws_security_group.this.arn
  description = "ARN of the SG."
}
