resource "aws_subnet" "subnet" {
  count             = length(var.cidr)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.cidr[count.index]
  availability_zone = data.aws_availability_zones.az.names[count.index]
  tags = {
    Name = "subnet-${count.index + 1}"
  }

}

data "aws_availability_zones" "az" {
  state = "available"
}
