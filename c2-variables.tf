# Input Variables
# AWS Region
variable "aws_region" {
  type = string
  default = "ap-south-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
  type = string
  default = "t2.micro"
}

