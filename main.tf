resource "aws_instance" "ec2_vm" {
  ami           = "ami-02aeff1a953c5c2ff"
  instance_type = "t3.micro"
  key_name      = "zahra-bihlal-key1"
  tags = {
    Name = "zbepisen_exam"
    Owner = "Zahra Bihlal"
  }
  
  vpc_security_group_ids = ["${aws_security_group.default.id}"] 
}

# Default ec2 user is "ec2-user"
