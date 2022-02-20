# Encrypted S3 Bucket

This module deploys the following resources:

* S3 Bucket
* Bucket ACL
* Bucket Server Sided Encryption
* Default Bucket Policy
* Bucket Public Access Block
* Bucket Lifecycle for objects expiration (conditional)

## Usage

```
module "s3_bucket" {
  source                        = "git@github.com:protonmedia/terraform_modules.git//encrypted_s3_bucket?ref=<git commit sha>"
  name                          = "my-bucket"
  number_of_days_objects_expire = 1 # optional
}
```

## Outputs

| Name | Example |
|------|---------|
| bucket_id | `my-bucket` |
| bucket_arn | `arn:aws:s3:::my-bucket` |
| bucket_domain_name | `my-bucket.s3.amazonaws.com` |
