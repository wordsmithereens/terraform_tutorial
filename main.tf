provider "aws" {
  version = "2.12.0"
  region = "us-west-2"
  profile = "terraformer"
}
 
resource "aws_instance" "helloworld" {
  ami = "ami-01fee56b22f308154"
  instance_type = "t2.micro"
  key_name = "mymanningkp"
  iam_instance_profile = "terraformer"
  security_groups =["todd_manning_org"]
}
