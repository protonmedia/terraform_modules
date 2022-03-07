module "sns_kms_key" {
  source      = "../kms_key"
  description = "Key used to encrypt messages on SNS Topic ${var.name}"
  alias       = "sns/${var.name}"
  policy      = jsonencode(data.aws_iam_policy_document.sns.json)
}

resource "aws_sns_topic" "this" {
  display_name      = var.name
  kms_master_key_id = module.sns_kms_key.alias
}
