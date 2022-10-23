resource "aws_instance" "test-nginx" {
  ami           = data.aws_ami.test_cert.id
  instance_type = var.type-ec2
  count         = 3
  tags = {
    name = element(var.names-ec2, count.index)
  }


}
