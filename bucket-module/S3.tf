module "bucket" {
source = "../modules/bucket"   
}
provider "aws" {
  region = "eu-west-2"
}