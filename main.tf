module "s3_state_file" {
  source = "github.com/RO-TIM-CEB/tf-aws-dev-ceb-s3state-module.git?ref=${MODULE_VERSION}"

# Important note:
# If you want to change optional values, you must know what you are doing.

#Global variables
# MANDATORY
# Default region
  region                    = var.region            # Allowed regions: us-west-2, eu-west-1 and eu-central-1
# End Default region
# AWS profile
  profile                    = var.profile           # Allowed profile names: ceb-dev, ceb-staging and ceb-prod
# End AWS profile
# End MANDATORY
# End Global variables


# Terraform S3 variable
# MANDATORY
  s3_bucket_name            = var.s3_bucket_name # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as DynamoDB table you'll know on what this bucket will be linked at
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
  s3_bucket_versioning      = var.s3_bucket_versioning                 # Allowed options Enabled/Disabled, defaults=Enabled
  s3_server_side_encryption = var.s3_server_side_encryption            # Allowed options AES256/aws:kms/aws:kms:dsse, defaults=AES256
  s3_block_public_acls      =  var.s3_block_public_acls                # Allowed options true/false, defaults=true
  s3_block_public_policy    =  var.s3_block_public_policy              # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform S3 variable

# Terraform DynamoDB table variable
# MANDATORY
  dynamo_tbl_name                    =  var.dynamo_tbl_name # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as S3 bucket you'll know what this table is for
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
 dynamo_tbl_attribute_type            = var.dynamo_tbl_attribute_type             # Allowed options S/N/B, defaults=S
 dynamo_tbl_hash_key                  = var.dynamo_tbl_hash_key          # Allowed options LockID, defaults=LockID
 dynamo_tbl_billing_mode              = var.dynamo_tbl_billing_mode # Allowed options PAY_PER_REQUEST/PROVISIONED, defaults=PAY_PER_REQUEST
 dynamo_tbl_point_in_time_recovery    = var.dynamo_tbl_point_in_time_recovery              # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform DynamoDB table variable

# MANDATORY
#### IMPORTANT:
#### Ensure all code is written in lowercase (lowcaps) as it is MANDATORY.
#### Failure to do so during execution can result in the code breaking the standard and causing the execution to fail.
#### Please adhere to this requirement to maintain consistency and avoid issues.

# Business TAGS
  business_tags               = var.business_tags
# End Business TAGS

# Technical TAGS
  technical_s3_tags           = var.technical_s3_tags
  technical_dynamodbtbl_tags  = var.technical_dynamodbtbl_tags
# End Business TAGS

# Security TAGS
  security_s3_tags            = var.security_s3_tags
  security_dynamotbl_tags     = var.security_dynamotbl_tags
# End Security TAGS

# Billing TAGS
  billing_tags                = var.billing_tags
# End Billing TAGS
# Backup S3 TAGS
  backup_s3_tags              = var.backup_s3_tags
# End Backup S3 TAGS
}
