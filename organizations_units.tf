################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "Jarvis" {
  name      = "Jarvis"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "GDAC" {
  name      = "GDAC"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "TIE-Meters" {
  name      = "TIE-Meters"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "VIA-Insight-Markets" {
  name      = "VIA-Insight-Markets"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "TAC-Core" {
  name      = "TAC-Core"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "Management" {
  name      = "Management"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "Projects" {
  name      = "Projects"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "it_team" {
  name      = "IT Team"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "trash_accounts" {
  name      = "Trash Accounts"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}

################################################################################
# This resource creates an Organizational Unit (OU). An OU is a container      #
# that can hold other OU or AWS Accounts. In our case, A OU represents         #
# an Application Team.                                                         #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organizational_unit" "core_services" {
  name      = "Core Services"
  parent_id = aws_organizations_organization.CLOUDACIA.roots[0].id
}
