output "sns_arn" {
  value       = aws_sns_topic.this.id
  description = "The ARN of the SNS topic"
}

output "key_arn" {
  value       = module.sns_kms_key.arn
  description = "The Amazon Resource Name (ARN) of the key"
}

output "alias_arn" {
  value       = module.sns_kms_key.alias_arn
  description = "The Amazon Resource Name (ARN) of the key alias"
}

output "alias" {
  value       = module.sns_kms_key.alias
  description = "The key alias"
}
