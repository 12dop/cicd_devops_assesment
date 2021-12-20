module "src" {
source = "../modules/src" 
  codestar_connector_credentials = "arn:aws:codestar-connections:eu-west-2:160064204913:connection/c0c73919-188b-47bf-b03c-96cdbcebb562"
}
  variable "codestar_connector_credentials" {
    type = string
}
