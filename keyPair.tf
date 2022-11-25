resource "aws_key_pair" "terraform_aws_key" {
  key_name   = "carlosalbertofilho-terraform-aws"
  public_key = file("~/.ssh/terraform-aws.pub")
}
