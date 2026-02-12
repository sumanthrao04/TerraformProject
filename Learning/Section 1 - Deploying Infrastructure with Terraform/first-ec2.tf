
resource "aws_instance" "myec2_aws_Linux" {
  ami           = "ami-0c1fe732b5494dc14"
  instance_type = "t2.micro"

  tags = {
    Name = "sumanth_ec2_aws_linux"
  }

}



resource "aws_instance" "myec2_ubutnu" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  tags = {
    Name = "sumanth_ec2_ubuntu"
  }

}
 
