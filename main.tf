module "s3_state_file" {
  source = "git@github.com:RO-TIM-CEB/tf-aws-dev-ceb-s3state-module.git?ref=v0.2.0"

# Important note:
# If you want to change optional values, you must know what you are doing.

#Global variables
# MANDATORY
# Default region
  region                                      = module.s3_state_file.region       # Allowed regions: us-west-2, eu-west-1 and eu-central-1
# End Default region
# Default region
  terraform_module_version                    = module.s3_state_file.terraform_module_version    # Allowed characters: vX.X.X, lower case
# End Default region
# AWS profile
  profile                                     = module.s3_state_file.profile      # Allowed profile names: ceb-dev, ceb-staging and ceb-prod
# End AWS profile
# End MANDATORY
# End Global variables


# Terraform S3 variable
# MANDATORY
  s3_bucket_name            = module.s3_state_file.s3_bucket_name # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as DynamoDB table you'll know on what this bucket will be linked at
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
  s3_bucket_versioning      = module.s3_state_file.s3_bucket_versioning                 # Allowed options Enabled/Disabled, defaults=Enabled
  s3_server_side_encryption = module.s3_state_file.s3_server_side_encryption            # Allowed options AES256/aws:kms/aws:kms:dsse, defaults=AES256
  s3_block_public_acls      =  module.s3_state_file.s3_block_public_acls                # Allowed options true/false, defaults=true
  s3_block_public_policy    =  module.s3_state_file.s3_block_public_policy              # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform S3 variable

# Terraform DynamoDB table variable
# MANDATORY
  dynamo_tbl_name                    =  module.s3_state_file.dynamo_tbl_name # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as S3 bucket you'll know what this table is for
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
 dynamo_tbl_attribute_type            = module.s3_state_file.dynamo_tbl_attribute_type             # Allowed options S/N/B, defaults=S
 dynamo_tbl_hash_key                  = module.s3_state_file.dynamo_tbl_hash_key          # Allowed options LockID, defaults=LockID
 dynamo_tbl_billing_mode              = module.s3_state_file.dynamo_tbl_billing_mode # Allowed options PAY_PER_REQUEST/PROVISIONED, defaults=PAY_PER_REQUEST
 dynamo_tbl_point_in_time_recovery    = module.s3_state_file.dynamo_tbl_point_in_time_recovery              # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform DynamoDB table variable

# MANDATORY
#### IMPORTANT:
#### Ensure all code is written in lowercase (lowcaps) as it is MANDATORY.
#### Failure to do so during execution can result in the code breaking the standard and causing the execution to fail.
#### Please adhere to this requirement to maintain consistency and avoid issues.

# Business TAGS
  business_tags               = module.s3_state_file.business_tags
# End Business TAGS

# Technical TAGS
  technical_s3_tags           = module.s3_state_file.technical_s3_tags
  technical_dynamodbtbl_tags  = module.s3_state_file.technical_dynamodbtbl_tags
# End Business TAGS

# Security TAGS
  security_s3_tags            = module.s3_state_file.security_s3_tags
  security_dynamotbl_tags     = module.s3_state_file.security_dynamotbl_tags
# End Security TAGS

# Billing TAGS
  billing_tags                = module.s3_state_file.billing_tags
# End Billing TAGS
# Backup S3 TAGS
  backup_s3_tags              = module.s3_state_file.backup_s3_tags
# End Backup S3 TAGS
}
