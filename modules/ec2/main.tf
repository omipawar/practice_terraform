resource "aws_instance" "tf"{
    ami = var.ami_id
    instance_type = var.instance_type
    
    key_name = var.key_name
    vpc_security_group_ids = [var.security_group_id]

    root_block_device {
        volume_size = 8
        volume_type = "gp3"
    }

    user_data = templatefile("${path.module}/install.sh", {environment = var.environment})

    tags = {
        Name = var.instance_name
    }
}
