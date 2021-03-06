variable "region" {
    default = "us-east-1"
  
}

variable "usernames" {
    type = list
    default = ["Developer_01", "developer_02", "Tester_01"]
  
}

variable "group" {
    type = list
    default = ["developers", "testers"]
  
}

variable "role" {
  type        = string
  default = "role_01"
  description = "Name of the role being created."
}

variable "principal_arns" {
  type        = list(string)
  default = [ "ec2.amazonaws.com" ]
  description = "ARNs of accounts, groups, or users with the ability to assume this role."
}