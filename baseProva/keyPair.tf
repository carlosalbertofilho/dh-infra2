resource "aws_key_pair" "terraform_aws_key" {
    key_name = "terraform-aws"
    public_key = file("../terraform-aws.pub")
}