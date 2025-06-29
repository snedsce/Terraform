variable "region" {
  description = "Enter the region you want to provision your Infrastructure from : "
}

variable "ami" {
  description = "Enter the ami of Instance: "
}

variable "instance_type" {
  description = "Enter the Instance type: "
}

variable "cidr" {
  type        = list(string)
  description = "Enter the CIDR list: "
  default = ["10.0.0.0/25", "10.0.0.128/26"]
}

variable "name" {
  description = "Enter the name of Instance: "
}
