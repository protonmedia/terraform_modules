output "sns_arn" {
  value       = aws_sns_topic.this.id
  description = "The ARN of the SNS topic"
}

output "key_arn" {
  value       = aws_kms_key.this.arn
  description = "The Amazon Resource Name (ARN) of the key"
}

output "alias_arn" {
  value       = aws_kms_alias.this.arn
  description = "The Amazon Resource Name (ARN) of the key alias"
}

output "alias" {
  value       = "alias/${var.alias}"
  description = "The key alias"
}
