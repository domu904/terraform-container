#s3 bucket policy
resource "aws_s3_bucket_policy" {
  name  = "s3_bucket"
  group = s3_group.admin
}

#
resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.my_bucket.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

#s3 bucket
resource "aws_s3_bucket" "bucket" {
  bucket        = "${var.bucket_name}"
  force_destroy = "true"

  versioning {
    enabled = "${var.versioning}"
  }
}