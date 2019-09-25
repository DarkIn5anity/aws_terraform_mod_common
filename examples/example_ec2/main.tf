provider "aws" {
  region = "eu-west-2"
}

module "ec2_instance" {
  source = "../../compute/ec2/"

  ec2_instance_name        = "${var.ec2_instance_name}"
  instance_type            = "${var.instance_type}"
  ec2_instance_environment = "${var.environment}"
  description              = "${var.description}"
  ami_name                 = "${var.ami_name}"
  ec2_subnet_name          = "${var.ec2_subnet_name}"

}