provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "terraform" {
  ami                    = "ami-0557a15b87f6559cf"
  instance_type          = "t2.micro"
  key_name               = "mykey"
  vpc_security_group_ids = ["sg-08a8bddeb812d5da9"]
  tags = {
    Name = "terraform22"
  }

}
