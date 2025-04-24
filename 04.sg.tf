# security group para el servidor nginx
resource "aws_security_group" "nginx-server-sg" {
  name = "${var.server_name}-sg"
  description = "Security group allowing SSH and HTTP access for nginx server"
  #vpc_id = aws_vpc.main.id # id de la vpc

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # permite el acceso ssh desde cualquier ip
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # permite el acceso http desde cualquier ip
  }

  egress {
    from_port = 0 # cuando el puerto es 0 significa que permite todo el trafico de salida
    to_port = 0
    protocol = "-1" # permite todo el trafico de salida
    cidr_blocks = ["0.0.0.0/0"] # permite el acceso http desde cualquier ip
  }

  #tags
  tags = {
    Name = "${var.server_name}"
    Environment = "${var.Environment}"
    Owner = "jhonpacalagua@cbit-online.com"
    Team = "DataOps"
    Proyect = "webinar"
  }
  
}