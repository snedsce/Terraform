variable "region" {
  description = "Enter the region you want to provision your Infrastructure from : "
  default = "us-east-1"
}

variable "ami" {
  description = "Enter the ami of Instance: "
  default = "ami-020cba7c55df1f615"
}

variable "instance_type" {
  description = "Enter the Instance type: "
  default = "t2.micro"
}

variable "cidr" {
  type        = list(string)
  description = "Enter the CIDR list: "
  default = ["10.0.0.0/25", "10.0.0.128/26"]
}

variable "name" {
  description = "Enter the name of Instance: "
  default = "ec2-test"
}
