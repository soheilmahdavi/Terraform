provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "Jenkins" {
  ami = "ami-sdsdsdsdsdsdsd"
  instance_type = "t2.micro"
  key_name = "Downloads/ec2.pem"
}
