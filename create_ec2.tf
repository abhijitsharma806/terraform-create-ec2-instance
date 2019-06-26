provider "aws" {
  access_key = "A**********************K"
  secret_key = "K*****************************************L"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-024a64a6685d05041"
  instance_type = "t2.micro"
  key_name = "terraform_key"
  subnet_id = "subnet-5302471b"
  security_groups = ["sg-0d9eba8b3bc5c19bb"]
  tags = {
    Name = "LaunchWithTerraForm"
  }
}
