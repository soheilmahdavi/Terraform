provider "aws" {
    region = "eu-central-1"
    assume_role {
      role_arn = ""
      session_name = "demo"
    }
  
}