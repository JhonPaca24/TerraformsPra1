resource "aws_instance" "nginx-server" {
  ami = var.ami_id # ami de ubuntu 20.04
   # ami es la amazon image 
  instance_type = var.instance_type


  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              EOF 

  key_name = aws_key_pair.nginx-server-ssh.key_name # nombre de la llave ssh

  vpc_security_group_ids = [aws_security_group.nginx-server-sg.id] # id del security group

  #tags
  tags = {
    Name = var.server_name
    Environment = var.Environment
    Owner = "jhonpacalagua@cbit-online.com"
    Team = "DataOps"
    Proyect = "webinar"
  }

}
