#provider "aws" {
# region = "eu-north-1"
#}
#resource "aws_instance" "my-ec2" {
#    ami = "ami-00263659a97a6c29c"
#    instance_type = "t3.micro"
#  tags = {
#    Name = "MyEC2Instance"
#  }
#}
provider "aws" {
  region = var.aws_regin

}
data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["amazon"]
  
}
resource "aws_instance" "my-ec2" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
}