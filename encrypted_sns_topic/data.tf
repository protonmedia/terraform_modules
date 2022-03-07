data "aws_iam_policy_document" "sns" {
  statement {
    sid = "My custom policy"
    principals {
      type        = "Service"
      identifiers = ["sns.amazonaws.com"]
    }
    actions   = ["kms:GenerateDataKey*", "kms:Decrypt"]
    resources = ["*"]
    effect    = "Allow"
  }
}
