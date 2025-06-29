resource "aws_instance" "ec2" {
  count         = length(var.cidr)
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnet[count.index].id
  tags = {
    Name = "${var.name}-${count.index + 1}"
  }
}



