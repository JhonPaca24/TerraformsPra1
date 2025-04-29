## variables

variable "ami_id" {
  description = "ID de la instancia ec2"
  default = "ami-0e449927258d45bc4" # ami de ubuntu 20.04
  
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

variable "aws_access_key" {
  description = "clave de acceso para la instancia ec2"
  default = "niguna"
  
}
variable "aws_secret_key" {
  description = "clave secreta para la instancia ec2"
  default = "ninguna"
  
}

