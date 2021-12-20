resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = "pipeline-artifacts-dami"
  acl    = "private"
  force_destroy = true
}

resource "aws_s3_bucket" "damitest-aws-cicd-pipeline" {
  bucket = "damitest-aws-cicd-pipeline"
  acl    = "private"
force_destroy = true
} 
