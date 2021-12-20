terraform{
    backend "s3" {
        bucket = "damitest-aws-cicd-pipeline"
        encrypt = true
        key = "terraform.tfstate"
        region = "eu-west-2"
    }
}


