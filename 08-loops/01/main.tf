resource "aws_instance" "sample" {
  count         = 2
  ami           = "ami-00d48a21603b2119b"
  instance_type = "t3.micro"
}