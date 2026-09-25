terraform{
    backend "s3"{
        bucket = "omipawar097-tf-backend"
        key = "dev/terraform.tfstate"
        region = "ap-south-1"
        encrypt = true
        use_lockfile = true
    }
}