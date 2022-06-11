variable "region" {
    default = "us-east-1"
  
}

variable "usernames" {
    type = list
    default = ["user_01", "user_02"]
  
}

variable "group" {
    type = list
    default = ["developers", "testers"]
  
}