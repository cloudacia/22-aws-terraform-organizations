################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "stagging" {
  name      = "cloudacia-stagging"
  email     = "stagging@cloudacia.com"
  parent_id = aws_organizations_organizational_unit.trash_accounts.id
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "jarvis-dev" {
  name      = local.account_name_jarvis.dev
  email     = local.account_owner_email_jarvis.dev
  parent_id = aws_organizations_organizational_unit.Jarvis.id
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "jarvis-stagging" {
  name      = local.account_name_jarvis.staging
  email     = local.account_owner_email_jarvis.staging
  parent_id = aws_organizations_organizational_unit.Jarvis.id
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "jarvis-prod" {
  name      = local.account_name_jarvis.production
  email     = local.account_owner_email_jarvis.production
  parent_id = aws_organizations_organizational_unit.Jarvis.id
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "identity-management" {
  name      = "identity-management"
  email     = "identity-management@cloudacia.com"
  parent_id = aws_organizations_organizational_unit.trash_accounts.id
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "account-management" {
  name      = local.account_name_it_team.identity
  email     = local.account_owner_email_it_team.identity
  parent_id = aws_organizations_organizational_unit.core_services.id
  role_name = "Admin"
}

################################################################################
# This resource creates an AWS Account under a specific Organizational Unit    #
# (OU). Before making a new AWS account, an email address should be working    #
# correctly. Otherwise, the account won't be accessible.                       #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_account" "tie-meters-dev" {
  name      = local.account_name_tie_meters.dev
  email     = local.account_owner_email_tie_meters.dev
  parent_id = aws_organizations_organizational_unit.TIE-Meters.id
  role_name = "Admin"
}
