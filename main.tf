provider "aws" {
    region = "us-east-2"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "nome_do_recurso_terraform" {
    count = 1 
    ami = "ami-097a2df4ac947655f"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        "Name" = "carlosfilho-aws-${count.index}"
    }
}

resource "aws_key_pair" "terraform_aws_key" {
    key_name = "terraform-aws"
    public_key = file("terraform-aws.pub")
}