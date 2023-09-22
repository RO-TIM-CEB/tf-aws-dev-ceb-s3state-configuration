# variables.tfvars


# Terraform state file name convention, ^state-terraform-s3.*$
  s3_bucket_name   = "state-terraform-s3-ceb-vpc"
# End Terraform state file name convention, ^state-terraform-s3.*$

# DynamoDB table name
  dynamo_tbl_name  = "state-terraform-s3-ceb-vpc"
# End DynamoDB table name

# Default region
  region           = "eu-central-1"
# End Default region

# Business TAGS
  business_tags = {
    "atos:business:project"                  = "ceb development - backup on aws"
    "atos:business:owner"                    = "ceb team"
    "atos:business:charge_to_id"             = "none"
    "atos:business:businessunit"             = "businessunit"
    "atos:business:wbs"                      = "wbs"
    "atos:business:stakeholder"              = "atos"
    "atos:business:impact"                   = "low"
    "atos:business:dedicated:client_name"    = "ceb"
    "atos:business:dedicated:country"        = "all"
  }

# Mandatory format key:value, values must reflect the environment
 #business_tags = {
 #   "atos:business:project"                 = "ceb development- aws backup on aws"
 #   "atos:business:owner"                   = "ceb team"
 #   "atos:business:charge_to_id"            = "ChargeID-BBSC"
 #   "atos:business:businessunit"            = "businessunit"
 #   "atos:business:WBS"                     = "wbs"
 #   "atos:business:stakeholder"             = "ceb team"
 #   "atos:business:impact"                  = "low"
 #  "atos:business:dedicated:client_name"   = "Client Name"
 #   "atos:business:dedicated:country"       = "UK/DE"
 # }

# End Mandatory format key:value, values must reflect the environment
# End Business TAGS

# Technical TAGS

  technical_s3_tags = {
   "atos:s3:technical:stack"                     = "development"
   "atos:s3:technical:deployment_method"         = "terraform"
   "atos:s3:technical:versioning"               = "enabled"
   "atos:s3:technical:replication"               = "disabled"
   "atos:s3:technical:lifecycle"                 = "disabled"
   "atos:s3:technical:logging"                   = "disabled"
   "atos:s3:technical:notification"              = "none"
  } # Define your tags here


# Mandatory format key:value, values must reflect the environment
 # default = {
 #   "atos:s3:technical:stack"                     = "development"
 #   "atos:s3:technical:deployment_method"         = "terraform"
 #   "aatos:s3:technical:versioning"               = "enabled"
 #   "atos:s3:technical:replication"               = "disabled"
 #   "atos:s3:technical:lifecycle"                 = "disabled"
 #   "atos:s3:technical:logging"                   = "disabled"
 #   "atos:s3:technical:notification"              = "none"
 # }

# End Mandatory format key:value, values must reflect the environment
# End Technical TAGS

technical_dynamodbtbl_tags = {
   "atos:dynamotbl:technical:stack"                     = "development"
   "atos:dynamotbl:technical:deployment_method"         = "terraform"
   "atos:dynamotbl:technical:versioning"               = "enabled"
   "atos:dynamotbl:technical:replication"               = "disabled"
   "atos:dynamotbl:technical:lifecycle"                 = "disabled"
   "atos:dynamotbl:technical:logging"                   = "disabled"
   "atos:dynamotbl:technical:notification"              = "none"
}

security_dynamotbl_tags = {
  "atos:dynamotbl:security:compliance"            = "none"
  "atos:dynamotbl:security:classification"        = "restricted"
  "atos:dynamotbl:security:encryption"            = "unencrypted"
  "atos:dynamotbl:security:level"                 = "low"
  "atos:dynamotbl:security:incident_response"     = "adrian mendyk"
  "atos:dynamotbl:security:access_control"        = "private access"
}

security_s3_tags = {
  "atos:s3:security:compliance"             = "none"
  "atos:s3:security:classification"         = "restricted"
  "atos:s3:security:encryption"             = "encrypted"
  "atos:s3:security:level"                  = "medium"
  "atos:s3:security:incident_response"      = "adrian mendyk"
  "atos:s3:security:access_control"         = "private access"
}

billing_tags = {
  "atos:billing:credit"                   = "apn_12_21_2022"
  "atos:billing:account_name"             = "737580263478"
  "atos:billing:contact_name"             = "radoslaw wieckowski"
  "atos:billing:contact_email"            = "radoslaw.wieckowski@atos.net"
}

# Backup S3 TAGS

backup_s3_tags = {
  "atos:backup:s3"                    = "backup"
  "atos:backup:charge_to_id"          = "A HCI Del PriHybClo SOM"
  "atos:backup:frequency"             = "none"
  "atos:backup:owner"                 = "ceb"
  "atos:backup:data_classification"   = "confidential"
}
# End Backup TAGS
