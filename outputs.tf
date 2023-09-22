# Export the bucket name as an output variable
output "terraform_state_bucket_name" {
  description = "Terraform TF state S3 bucket name"
  value = module.terraform_state_bucket_name
}
