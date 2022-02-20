output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "Bucket Name"
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "Bucket ARN"
}

output "bucket_domain_name" {
  value       = ws_s3_bucket.this.bucket_domain_name
  description = "FQDN of bucket"
}
