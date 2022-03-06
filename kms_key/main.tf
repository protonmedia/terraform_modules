resource "aws_kms_key" "this" {
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
}

resource "aws_kms_alias" "this" {
  name          = "alias/${var.alias}"
  target_key_id = aws_kms_key.this.key_id
}

# NOTE: All KMS keys must have a key policy. If a key policy is not specified, AWS gives the
# KMS key a default key policy that gives all principals in the owning account unlimited access to the key
# Custom key policies can by added through the aws_kms_grant resource.
