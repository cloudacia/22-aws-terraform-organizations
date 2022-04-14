################################################################################
# The code below represents the Terraform backend setting. The TF state file   #
# will be stored on an S3 bucket in the Management-Account. Also, a DynamoDB   #
# table will be used to lock the files to protect it against data corruption.  #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account #000000000000                           #
################################################################################
terraform {
  backend "s3" {
    bucket = "cloudacia-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-lock"
    #encrypt        = true
  }
}

################################################################################
# This resource (provider) represents to connection to an AWS accoun t         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account #000000000000                           #
################################################################################
provider "aws" {
  alias  = "management-account"
  region = var.aws_region
}

################################################################################
# This resource (provider) represents a connection to an AWS account           #
#                                                                              #
# ACCOUNT AFFECTED: tie-meters-dev-dev #000000000000                           #
################################################################################
provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.tie-meters-dev.id}:role/Admin"
  }
  alias  = "tie-meters-dev"
  region = "us-east-1"
}

################################################################################
# This resource (provider) represents a connection to an AWS account           #
#                                                                              #
# ACCOUNT AFFECTED: dentity-management #000000000000                           #
################################################################################
provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.account-management.id}:role/Admin"
  }
  alias  = "account-management"
  region = "us-east-1"
}
