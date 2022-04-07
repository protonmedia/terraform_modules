variable "s3_bucket_name" {
  type        = string
  description = "S3 Bucket Name."
}

variable "alternate_domain_name" {
  type        = string
  description = "Alternate domain name."
}

variable "subject_alternative_names" {
  type        = list(string)
  description = "List of subject alternative domain names."
  default     = []
}

variable "bucket_regional_domain_name" {
  type        = string
  description = "S3 Bucket regional domain name."
}

variable "cloudfront_access_identity_path" {
  type        = string
  description = "Access Identity Path provided by the CloudFront Origin Access Identity."
}

variable "whitelisted_ip_addresses" {
  type        = list(string)
  description = "List of IP addresses with access to the CloudFront Distribution."
  default     = []
}
