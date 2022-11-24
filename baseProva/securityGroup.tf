resource "aws_security_group" "sg_acesso_ssh_publico" {
    description = "Libera porta SSH para Internet"
    
    ingress {
        cidr_blocks = [variable.ip_internet]
        description = "porta ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }

    egress {
        description = "porta SSH"
        from_port = 0 
        to_port = 0
        protocol = -1
        cidr_blocks = [variable.ip_internet]
    }

    tags = {
        "Name" = "${variable.usuario}-sg_acesso_ssh_publico"
    }
}