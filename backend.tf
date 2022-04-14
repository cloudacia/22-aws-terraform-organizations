################################################################################
# This resource (module) creates a Terraform backend on a specific account     #
# based on a DynamoDB table to lock the state file (to avoid data corruption), #
# and an S3 bucket to store the state files.                                   #
#                                                                              #
# ACCOUNT AFFECTED: tie-meters-dev-dev #000000000000                           #
################################################################################
module "backend_dev" {
  source      = "./modules/backend"
  bucket_name = local.tie_meter_terraform_state_bucket_name.dev

  providers = {
    aws = aws.tie-meters-dev
  }
}

################################################################################
# This resource (module) creates a Terraform backend on a specific account     #
# based on a DynamoDB table to lock the state file (to avoid data corruption), #
# and an S3 bucket to store the state files.                                   #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account #000000000000                           #
################################################################################
module "backend_it_team" {
  source      = "./modules/backend"
  bucket_name = "cloudacia-backend"

  providers = {
    aws = aws.management-account
  }
}
