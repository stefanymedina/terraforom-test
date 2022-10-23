resource "aws_instance" "test-nginx" {
    ami = data.aws_ami.test-cert
    instance_type = var.type-ec2
    count = 2
    tags = {
      name = element(var.names-ec2,count.index)
    }


}

data "aws_ami" "test-cert" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
}
