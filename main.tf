data "aws_instance" "tf"{
    filter {
        name = "tag:Name"
        values = ["terraform"]
    }
}

output "ec2_instance_id"{
    value = data.aws_instance.tf.id
}