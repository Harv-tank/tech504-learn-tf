# Create an ec2 instance

provider "aws" {
    region = "eu-west-1"

}
# which resource to create
resource "aws_instance" "app_instance" {
  ami = "ami-0c1c30571d2dae5c9"

  instance_type = "t3.micro"

  associate_public_ip_address = true

  tags = {
    Name = "tech504-harvi-tf-test-app"
  }
}
# where to create - provide cloud provider name 
# which region to create the resource/service
# which resource to create
# which AMI ID ami-0c1c30571d2dae5c9 (for ubuntu 22.04 LTS)
# which instance type t3.micro
# Add a public ip address to this instance
# aws_access_key = dwdwdef (MUST NEVER DO THIS)
# aws_secret_key = dwdwdef (MUST NEVER DO THIS)
# name to the instance
# syntac to HCL is {key = value}
 