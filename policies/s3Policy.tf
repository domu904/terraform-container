resource "aws_s3_bucket_policy" {
  name  = "s3_bucket"
  group = s3_group.admin
}

