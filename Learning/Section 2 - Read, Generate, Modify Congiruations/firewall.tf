resource "aws_security_group" "Terraform-secuirty-group" {
  name = "Terraform-secuirty-group"
  description = "Security group for Terraform learning"

  tags = {
    name="Terraform-secuirty-group"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Terraform-inbound" {

  security_group_id = aws_security_group.Terraform-secuirty-group.id
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
    from_port = 80  
    to_port = 100   
}

resource "aws_vpc_security_group_egress_rule" "Terraform-outbound" {

  security_group_id = aws_security_group.Terraform-secuirty-group.id
   ip_protocol       = "-1" #Allow all outbound traffic
    cidr_ipv4         = "0.0.0.0/0"   
     }

