resource "aws_eip" "elasticIP" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}


output "elasticIP" {
  value = {
   elasticIP_public_ip = aws_eip.elasticIP.public_ip
    elasticIP_public_dns = aws_eip.elasticIP.public_dns
    elasticIP_id= aws_eip.elasticIP.id

  }
}


output "web_instance" {
  value = {
    web_instance_id = aws_instance.web.id
    web_instance_public_ip = aws_instance.web.public_ip
    web_instance_public_dns = aws_instance.web.public_dns
    web_instance_state = aws_instance.web.instance_state
  }
  
}

output "WebInstance_API" {
  value = "https://${aws_instance.web.public_ip}"
}