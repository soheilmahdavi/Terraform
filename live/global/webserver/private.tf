resource "aws_subnet" "private-subnet-in-eu-central-1" {
    vpc_id = "${aws_vpc.default.id}"

    cidr_block = "${var.private_subnet_cidr}"
    availability_zone = "eu-central-1a"
    tags = {
      "Name" = "Soheil Private Subnet"
    }
}