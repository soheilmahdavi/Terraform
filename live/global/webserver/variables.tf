variable "access_key" {
description = "AWS access key"
default = ""
}

variable "secret_key" {
description = "AWS secret key"
default = ""
}

variable "region" {
description = "AWS region for hosting our your network"
default = "eu-central-1"
}

variable "key_path" {
description = "Key path for SSHing into EC2"
default  = "./ssh/my-key.pem"
}
variable "key_name" {
description = "Key name for SSHing into EC2"
default = "my-key"
}
variable "vpc_cidr" {
description = "CIDR for VPC"
default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
description = "CIDR for public subnet"
default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
description = "CIDR for private subnet"
default     = "10.0.2.0/24"
}

variable "amis" {
description = "Base AMI to launch the instances"
    default = {
        eu-central-1 = "ami-0a1ee2fb28fe05df3"
        eu-central-2 = "ami-0a1ee2fb28fe05df3"
    }
}