resource "aws_instance" "nat" {
    ami = "ami-0a1ee2fb28fe05df3" # this is a special ami preconfigured to do NAT
    availability_zone = "eu-central-1a"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    vpc_security_group_ids = ["${aws_security_group.nat.id}"]
    subnet_id = "${aws_subnet.public-subnet-in-eu-central-1.id}"
    associate_public_ip_address = true
    source_dest_check = false

    tags = {
      "Name" = "NAT instance"
    }

}