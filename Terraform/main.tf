## Create normal EC2 instance resource using resource


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


## Create an EC2 instance using predefined modules on terraform

# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"

#   name = "single-instance"

#   instance_type          = "t2.micro"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

## Create EC2 instance using self defined modules

module "my_instance" {

  source = "./modules/ec2-instance"
  instance_name = "new_instance"
  instance_type = "t2.small"
  
}
