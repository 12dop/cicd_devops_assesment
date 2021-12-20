# cicd_devops_assesment
CICD DevOps Assessment
In this repo, you create a CI/CD pipeline that automatically builds a container image from commited code, stores the image in S3 bucket, updates a Terraform script in a Git repository and triggers deployment into AWS Codepipeline using that Terraform script.
**In this repo**
The BUILDSPEC folder contains the yml file that initiate the CICD deployment of AWS Codepipeline.
The state.tf contain the script that store the terraform.tfstate file.
The Pipeline.tf contains the script that creates the codebuild projects(tf-plan and tf-apply) and codepipeline resource.
The S3bucket.tf contains the script that create the codebuild artifact.
Variable.tf contain the script for environment variables
**Prerequisites** 
AWS account
AWS cli
Terraform
Visual Studio Code
**To Deploy This Source Code**
