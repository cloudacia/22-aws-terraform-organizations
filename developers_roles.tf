################################################################################
# This resource creates a role (ex:, Developer) on a target account            #
# (ex:, application_team_#1_dev_account). The role is only accessible from the #
# AWS Account specified on the attribute "trusted_entity", the AWS             #
# identity-management account.                                                 #
#                                                                              #
# ACCOUNT AFFECTED: dentity-management #000000000000                           #
################################################################################
module "developer_role_dev" {
  source         = "./modules/developer-role"
  role_name      = "Developer"
  trusted_entity = "arn:aws:iam::${aws_organizations_account.account-management.id}:root"
  providers = {
    aws = aws.tie-meters-dev
  }
}
