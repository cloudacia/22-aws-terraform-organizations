################################################################################
# This resource creates an AWS Organization on the main AWS account.           #
# This main account is labeled a "management-account" in the AWS Organizations #
# service.                                                                     #
#                                                                              #
# ACCOUNT AFFECTED: Management-Account                                         #
################################################################################
resource "aws_organizations_organization" "CLOUDACIA" {
  feature_set = "ALL"
}
