variable "names-ec2" {
  type = list
  default = ["dev-ec2", "prod-ec2", "au-ec2"]
}

variable "type-ec2" {
  default = "t2.micro"
}
