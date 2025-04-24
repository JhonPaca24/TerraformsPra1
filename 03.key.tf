## SSH ###
# hacer uso de la llave ssh publica 
resource "aws_key_pair" "nginx-server-ssh" {
  key_name = "${var.server_name}-ssh"
  public_key = file("${var.server_name}.key.pub")
  
  #tags
  tags = {
    Name = "${var.server_name}-ssh"
    Environment = "${var.Environment}"
    Owner = "jhonpacalagua@cbit-online.com"
    Team = "DataOps"
    Proyect = "webinar"
  }
}
