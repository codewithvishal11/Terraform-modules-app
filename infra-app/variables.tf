variable "env" {
  description = "The environment for the resources"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
}

variable "instance_count"{
    description = "The number of EC2 instances to create"
    type = number
}

variable "ec2_instance_type" {
  description = "The is the instance type for my EC2 infra"
  type        = string
}

variable "ec2_ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "ec2_root_volume_size" {
  description = "The size of the root volume for the EC2 instance"
  type        = number
}
variable "hash_key" {
  default = "student_id"
  description = "The hash key for the DynamoDB table"
  type        = string
}