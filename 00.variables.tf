## variables

variable "ami_id" {
  description = "ID de la instancia ec2"
  default = "ami-0c55b159cbfafe1f0" # ami de ubuntu 20.04
  
}

variable "instance_type" {
  description = "Tipo de instancia ec2"
  default = "t3.micro"
  
}

variable "server_name" {
  description = "nombre del servidor web"
  default = "nginx-server"
  
}
variable "Environment" {
  description = "Ambiente de la aplicacion"
  default = "test"
  
}
