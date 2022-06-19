resource "aws_subnet" "public-subnet-in-eu-central-1" {
    vpc_id = "${aws_vpc.default.id}"
    cidr_block = "${var.public_subnet_cidr}"
    availability_zone = "eu-central-1a"
    tags = {
      "Name" = "Soheil Public Subnet"
    }
}