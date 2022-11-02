//resource "aws_instance" "sample" {
//  count         = length(var.instances)
//  ami           = "ami-00d48a21603b2119b"
//  instance_type = "t3.micro"
//  tags = {
//    Name = element(var.instances, count.index)
//  }
//}
//

variable "instances" {
  default = {
    catalogue = {
      instance_type = "t3.micro"
      tagName       = "CATALOGUE"
    }
    cart = {
      instance_type = "t3.micro"
      tagName       = "CART"
    }

  }
}

output "count" {
  value = length(var.instances)
}
