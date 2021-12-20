 resource "aws_s3_bucket" "damitest-aws-cicd-pipeline" {
  bucket = "damitest-aws-cicd-pipeline"
  acl    = "private"
force_destroy = true
} 
