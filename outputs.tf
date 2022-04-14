output "links" {
  value = {
    aws_console_sign_in = "https://${aws_organizations_account.account-management.id}.signin.aws.amazon.com/console/"
    #switch_role_staging    = "https://signin.aws.amazon.com/switchrole?account=${aws_organizations_account.staging.id}&roleName=${urlencode(module.developer_role_staging.role_name)}&displayName=${urlencode("Developer@staging")}"
  }
}
