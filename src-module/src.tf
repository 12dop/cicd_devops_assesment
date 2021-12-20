module "src" {
source = "../modules/src"      
}
  variable "codestar_connector_credentials" {
    type = string
}
