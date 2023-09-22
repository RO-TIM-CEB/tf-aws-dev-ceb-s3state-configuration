module "s3_state_file" {
  #source = "git@github.com:RO-TIM-CEB/tf-aws-dev-ceb-s3state-module.git?ref=v0.4.0"
source = "git@github.com:RO-TIM-CEB/tf-aws-dev-ceb-s3state-module.git?ref=main"
# terraform.tfvars
# Important note:
# If you want to change optional values, you must know what you are doing.


#Global variables
# MANDATORY
# Default region
  region                    = "us-west-2"            # Allowed regions: us-west-2, eu-west-1 and eu-central-1
# End Default region
# AWS profile
  profile                    = "production"            # Allowed profile names: ceb-dev, ceb-staging and ceb-prod
# End AWS profile
terraform_module_version     = "v0.4.0"
# End MANDATORY
# End Global variables


# Terraform S3 variable
# MANDATORY
  s3_bucket_name            = "infrastructure-state" # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as DynamoDB table you'll know on what this bucket will be linked at
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!

  s3_bucket_versioning      = "Enabled"           # Allowed options Enabled/Disabled, defaults=Enabled
  s3_server_side_encryption = "AES256"            # Allowed options AES256/aws:kms/aws:kms:dsse, defaults=AES256
  s3_block_public_acls      =  "true"               # Allowed options true/false, defaults=true
  s3_block_public_policy    =  "true"               # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform S3 variable


# Terraform DynamoDB table variable
# MANDATORY
  dynamo_tbl_name                    = "infrastructure-state" # Maximum 30 characters, no defaults, RECOMMANDATION: If you have the same name as S3 bucket you'll know what this table is for
# End MANDATORY
# OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
 dynamo_tbl_attribute_type            = "S"               # Allowed options S/N/B, defaults=S
 dynamo_tbl_hash_key                  = "LockID"          # Allowed options LockID, defaults=LockID
 dynamo_tbl_billing_mode              = "PAY_PER_REQUEST" # Allowed options PAY_PER_REQUEST/PROVISIONED, defaults=PAY_PER_REQUEST
 dynamo_tbl_point_in_time_recovery    = "true"              # Allowed options true/false, defaults=true
# End OPTIONAL - ONLY IF YOU KNOW WHAT ARE YOU DOING!!!
# End Terraform DynamoDB table variable

# MANDATORY
#### IMPORTANT:
#### Ensure all code is written in lowercase (lowcaps) as it is MANDATORY.
#### Failure to do so during execution can result in the code breaking the standard and causing the execution to fail.
#### Please adhere to this requirement to maintain consistency and avoid issues.
# Business TAGS
  business_tags = {
    "atos:business:project"                  = "ceb development - ceb on aws"
    "atos:business:owner"                    = "ceb team"
    "atos:business:charge_to_id"             = "none"
    "atos:business:businessunit"             = "businessunit"
    "atos:business:wbs"                      = "wbs"
    "atos:business:stakeholder"              = "atos"
    "atos:business:impact"                   = "low"
    "atos:business:dedicated:client_name"    = "ceb"
    "atos:business:dedicated:country"        = "all"
  }
  # End Business TAGS

# Technical TAGS
# S3 technical TAGS
  technical_s3_tags = {
   "atos:s3:technical:stack"                     = "development"
   "atos:s3:technical:deployment_method"         = "terraform"
   "atos:s3:technical:versioning"               = "enabled"
   "atos:s3:technical:replication"               = "disabled"
   "atos:s3:technical:lifecycle"                 = "disabled"
   "atos:s3:technical:logging"                   = "disabled"
   "atos:s3:technical:notification"              = "none"
  }
# End S3 technical TAGS

# Dynamodb table  technical TAGS
technical_dynamodbtbl_tags = {
   "atos:dynamotbl:technical:stack"                     = "development"
   "atos:dynamotbl:technical:deployment_method"         = "terraform"
   "atos:dynamotbl:technical:versioning"               = "enabled"
   "atos:dynamotbl:technical:replication"               = "disabled"
   "atos:dynamotbl:technical:lifecycle"                 = "disabled"
   "atos:dynamotbl:technical:logging"                   = "disabled"
   "atos:dynamotbl:technical:notification"              = "none"
}
# End Dynamodb table  technical TAGS
# End Technical TAGS

# Security TAGS
#Dynamodb table security TAGS
security_dynamotbl_tags = {
  "atos:dynamotbl:security:compliance"            = "none"
  "atos:dynamotbl:security:classification"        = "restricted"
  "atos:dynamotbl:security:encryption"            = "unencrypted"
  "atos:dynamotbl:security:level"                 = "low"
  "atos:dynamotbl:security:incident_response"     = "adrian mendyk"
  "atos:dynamotbl:security:access_control"        = "private access"
}
# End Dynamodb table security TAGS

# S3 security TAGS
security_s3_tags = {
  "atos:s3:security:compliance"             = "none"
  "atos:s3:security:classification"         = "restricted"
  "atos:s3:security:encryption"             = "encrypted"
  "atos:s3:security:level"                  = "medium"
  "atos:s3:security:incident_response"      = "adrian mendyk"
  "atos:s3:security:access_control"         = "private access"
}
# End S3 security TAGS
# End Security TAGS

# Billing TAGS
billing_tags = {
  "atos:billing:credit"                   = "apn_12_21_2022"
  "atos:billing:account_name"             = "737580263478"
  "atos:billing:contact_name"             = "radoslaw wieckowski"
  "atos:billing:contact_email"            = "radoslaw.wieckowski@atos.net"
}
 # End Billing TAGS

# Backup S3 TAGS
backup_s3_tags = {
  "atos:backup:s3"                    = "backup"
  "atos:backup:charge_to_id"          = "a hci del prihybclo som"
  "atos:backup:frequency"             = "none"
  "atos:backup:owner"                 = "ceb"
  "atos:backup:data_classification"   = "confidential"
}
# End Backup TAGS
# End  MANDATORY
}