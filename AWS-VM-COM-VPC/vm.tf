resource "aws_key_pair" "key" {
  key_name   = "aws_key"
  public_key = file("./aws-key.pub")

}

resource "aws_instance" "vm" {
  ami                     = "ami-05fb0b8c1424f266b"
  instance_type           = "t2.micro"
  key_name = aws_key_pair.key.key_name
  subnet_id = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.security_group_d]
  associate_public_ip_address = true

tags = {
    Name = "vm-terraform"
 } 

}

