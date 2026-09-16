locals{
    ssh_description = "Allow SSH"
    http_description = "Allow HTTP"
    ssh_port = 22
    http_port = 80
    all_cidr = "0.0.0.0/0"
}

resource "aws_security_group" "ec2_grp" {
    name = var.sg_name
    description = var.sg_description
    vpc_id = var.vpc_id

    #SSH
    ingress {
        description = local.ssh_description
        from_port = local.ssh_port
        to_port = local.ssh_port
        protocol = "tcp"  
        cidr_blocks = [local.all_cidr] 
    }

    #HTTP
    ingress {
        description = local.http_description
        from_port = local.http_port
        to_port = local.http_port
        protocol = "tcp"
        cidr_blocks = [local.all_cidr]
    }

    #outboud traffic
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [local.all_cidr]
    }

    tags = {
        Name = var.sg_name
    }
}