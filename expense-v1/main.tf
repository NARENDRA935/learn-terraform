resource "aws_instance" "frontend" {
  ami           = "ami-of3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-oeda81a962cebfc79"]

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-of3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-oeda81a962cebfc79"]

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-of3c7d07486cad139"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-oeda81a962cebfc79"]

  tags = {
    Name = "mysql-dev"
  }
}