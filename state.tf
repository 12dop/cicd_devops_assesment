# terraform{
#     backend "s3" {
#         bucket = "damitest-aws-cicd-pipeline"
#         encrypt = true
#         key = "terraform.tfstate"
#         region = "eu-west-2"
#     }
# }



# resource "aws_s3_bucket" "damitest-aws-cicd-pipeline" {
#   bucket = "damitest-aws-cicd-pipeline"
#   acl    = "private"
# } 