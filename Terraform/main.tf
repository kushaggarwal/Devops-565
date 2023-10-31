# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web1" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t3.small"

#   tags = {
#     Name = "HelloWorld54"
#   }
# }

module "ec2-instance" {
  source = "./modules/ec2-instance"
  ami = "ami-01eccbf80522b562b"
  instance_type = "t3.micro"
  instance_name = "myvm1"
  
}