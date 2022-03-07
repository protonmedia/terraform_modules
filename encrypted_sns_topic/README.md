# Encrypted SNS Topic

This module deploys the following resources:

* SNS Topic
* KMS Key
* KMS Alias

## Usage

```
module "sns_topic" {
  source                  = "git@github.com:protonmedia/terraform_modules.git//encrypted_sns_topic?ref=<git commit sha>"
  name                    = "MyTopic"
}
```

## Outputs

| Name | Example |
|------|---------|
| sns_arn | `arn:aws:sns:us-east-1:123456789111:MyTopic` |
| key_id | `1234abcd-12ab-34cd-56ef-1234567890ab` |
| key_arn | `arn:aws:kms:us-east-1:123456789111:key/1234abcd-12ab-34cd-56ef-1234567890ab` |
| alias_arn | `arn:aws:kms:us-east-1:123456789111:alias/my-application` |
