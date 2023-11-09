data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id = var.tcb_blog_subnet_public_id
  vpc_security_group_ids = [aws_security_group.permitir_ssh_http.id]
  associate_public_ip_address = true
  
    tags = {
    Name = "blogserver01"
 # Insira o nome da instância de sua preferência.
  }
}