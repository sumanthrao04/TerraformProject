variable "SERVER_IP_ADDRESS" {
  default = "101.20.30.50/32"
  description = "The IP address of the server"
}

variable "JAVA_APP_SERVER_PORT" {
  default = "8080"
  description = "The Java App server port number"
}

variable "SSH_PORT" {
  default = "22"
  description = "The SSH port number"
  
}

variable "FTP_PORT" {
  default = "21"
  description = "The FTP port number"   
  
}

variable "IP_PROTOCOL" {
  default = "tcp"
    description = "The IP protocol to allow"
}

variable "ami" {}

variable "instance_type" {}
