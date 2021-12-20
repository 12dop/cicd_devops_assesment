#resource "aws_iam_role" "dami-codepipeline-role" {
 # name = "dami-codepipeline-role"
#
 # assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

#}

#data "aws_iam_policy_document" "dami-cicd-pipeline-policies" {
 #   statement{
  #      sid = ""
   #     actions = ["codestar-connections:UseConnection"]
    #    resources = ["*"]
     #   effect = "Allow"
    }
    #statement{
     #   sid = ""
      #  actions = ["cloudwatch:*", "s3:*", "codebuild:*"]
       # resources = ["*"]
        #effect = "Allow"
    }
#}

#resource "aws_iam_policy" "dami1-cicd-pipeline-policy" {
 #   name = "dami1-cicd-pipeline-policy"
  #  path = "/"
   # description = "Pipeline policy"
    #policy = data.aws_iam_policy_document.dami-cicd-pipeline-policies.json
#}

#resource "aws_iam_role_policy_attachment" "test-cicd-pipeline-attachment" {
 #   policy_arn = aws_iam_policy.dami1-cicd-pipeline-policy.arn
  #  role = aws_iam_role.dami-codepipeline-role.id
#}


#resource "aws_iam_role" "test1-codebuild-role" {
 # name = "test1-codebuild-role"

  #assume_role_policy = <<EOF
#{
 # "Version": "2012-10-17",
  #"Statement": [
   # {
    #  "Action": "sts:AssumeRole",
     # "Principal": {
      #  "Service": "codebuild.amazonaws.com"
     # },
      #"Effect": "Allow",
      #"Sid": ""
    #}
  #]
#}
#EOF

#}

#data "aws_iam_policy_document" "dami-cicd-build-policies" {
    #statement{
     #   sid = ""
    #    actions = ["logs:*", "s3:*", "codebuild:*", "secretsmanager:*","iam:*"]
   #     resources = ["*"]
  #      effect = "Allow"
 #   }
#}

#resource "aws_iam_policy" "test-cicd-build-policy" {
    #name = "test-cicd-build-policy"
   # path = "/"
  #  description = "Codebuild policy"
 #   policy = data.aws_iam_policy_document.dami-cicd-build-policies.json
#}

#resource "aws_iam_role_policy_attachment" "test-cicd-codebuild-attachment1" {
 #   policy_arn  = aws_iam_policy.test-cicd-build-policy.arn
  #  role        = aws_iam_role.test1-codebuild-role.id
#

#resource "aws_iam_role_policy_attachment" "test2-cicd-codebuild-attachment2" {
  #  policy_arn  = "arn:aws:iam::aws:policy/PowerUserAccess"
 #   role        = aws_iam_role.test1-codebuild-role.id
#}
