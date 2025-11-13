provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         = 2
  ami           = "ami-0cae6d6fe6048ca2c "
  instance_type = "t3.micro"

  tags = {
    Name = "dev-server"
  }
}
