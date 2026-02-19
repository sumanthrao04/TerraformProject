
resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from Terraform"
}

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.SERVER_IP_ADDRESS
  from_port         = var.JAVA_APP_SERVER_PORT
  ip_protocol       = var.IP_PROTOCOL
 
  to_port           = var.JAVA_APP_SERVER_PORT
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.SERVER_IP_ADDRESS
  from_port         = var.SSH_PORT
  ip_protocol       = var.IP_PROTOCOL
  to_port           = var.SSH_PORT
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.SERVER_IP_ADDRESS
  from_port         = var.FTP_PORT
  ip_protocol       = var.IP_PROTOCOL
  to_port           = var.FTP_PORT
}


resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
}

resource "aws_instance" "myecProduction" {
ami = "ami-0e670eb768a5fc3E44"
 instance_type = "t2.large"
}
