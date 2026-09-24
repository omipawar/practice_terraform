sg_name        = "prod-sg"
sg_description = "Allow ssh and HTTP on prod instance"
vpc_id         = "vpc-045a7296301cda9c6"

ami_id        = "ami-01a00762f46d584a1"
instance_type = "t3.small"
key_name      = "devops"
instance_name = "prod-ec2"
environment   = "prod"
