################################################################################
# This resource creates a user group (ex:, Developers) on a target account     #
# (ex:, application_team_#1_dev_account). The users assigned to a group will   #
# be able to assume a specific role on a target account.                       #
#                                                                              #
# ACCOUNT AFFECTED: dentity-management #000000000000                           #
################################################################################
module "developer_group_dev" {
  source     = "./modules/developer-group"
  group_name = "developer_dev"

  assume_role_arns = [
    module.developer_role_dev.role_arn,
  ]

  providers = {
    aws = aws.account-management
  }
}
