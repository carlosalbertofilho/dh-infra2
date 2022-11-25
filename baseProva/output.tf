output "aws_instance_ec2" {
  value = aws_instance.carlos_ec2.*.public_ip
}

output "aws_instance_ec2_private" {
  value = aws_instance.carlos_ec2.*.private_ip
}

output "aws_instance_ec2_ansible" {
  value = aws_instance.carlos_ec2_ansible.*.public_ip
}
