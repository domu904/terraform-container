resource "s3_group_policy" {
  name  = "s3_policy"
  group = s3_group.admin

}