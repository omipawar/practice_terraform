variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_name" { type = string }
variable "sg_description" { type = string }
variable "vpc_id" { type = string }
