# dev infrastructure
module "dev-infra-app" {
  source = "./infra-app"

  env                  = "dev"
  bucket_name          = "infra-app-bucket"
  instance_count       = 1
  ec2_instance_type    = "t2.micro"
  ec2_ami_id           = "ami-0aba19e56f3eaec05" # ubuntu 
  ec2_root_volume_size = 10
  key_name             = "dev-infra-app-key"
  hash_key             = "student_id"
}

module "stg-infra-app" {
  source = "./infra-app"

  env                  = "stg"
  bucket_name          = "infra-app-bucket"
  instance_count       = 1
  ec2_instance_type    = "t2.micro"
  ec2_ami_id           = "ami-0aba19e56f3eaec05" # ubuntu 
  ec2_root_volume_size = 10
  key_name             = "dev-infra-app-key"
  hash_key             = "student_id"
}



module "prd-infra-app" {
  source = "./infra-app"

  env                  = "prd"
  bucket_name          = "infra-app-bucket"
  instance_count       = 2
  ec2_instance_type    = "t2.micro"
  ec2_ami_id           = "ami-0aba19e56f3eaec05" # ubuntu 
  ec2_root_volume_size = 20
  key_name             = "dev-infra-app-key"
  hash_key             = "student_id"
}