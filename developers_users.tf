################################################################################
# This resource creates a user (ex:, Developers) on a target account           #
# (ex:, application_team_#1_dev_account). The user is enrolled in a group that #
# assumes a specific role on a target account.                                 #
# The PGP key encrypts the user's credentials.                                 #
#                                                                              #
# ACCOUNT AFFECTED: dentity-management #000000000000                           #
################################################################################

module "eugenio_duarte" {
  source  = "./modules/developer-user"
  name    = "eugenio.duarte"
  pgp_key = "mDMEYlbyuxYJKwYBBAHaRw8BAQdAbgS7qXmt2C9yyOX1v7VfrljIQalvwcb833Nuz0nQscm0JkV1Z2VuaW8gRHVhcnRlIDxlZHVhcnRlQGNsb3VkYWNpYS5jb20+iJoEExYKAEIWIQRkRbMjdJAz/ShnEYi+5/jGObW89AUCYlbyuwIbAwUJA8JnAAULCQgHAgMiAgEGFQoJCAsCBBYCAwECHgcCF4AACgkQvuf4xjm1vPR56QEA2CehWlM4wu5jWLod27f7EOkju3AuZo7Q9KIyz7ZslBcBAOV8EX0j/ORNd5HhnotC7N0iKu4bYVKgtTCplsCyltEHuDgEYlbyuxIKKwYBBAGXVQEFAQEHQGsF5owjNcd+G2jSVbU+RFe16wJ1DTwpy+MtBSQNEiBlAwEIB4h+BBgWCgAmFiEEZEWzI3SQM/0oZxGIvuf4xjm1vPQFAmJW8rsCGwwFCQPCZwAACgkQvuf4xjm1vPQRRAEA8neVC6Y4tzFnU6y21DJdNNO7PqJudN3BFA3bEvQd00kA/3SpwEKWnSwZgSsJQ3B93gGGxdL9hr9II5Mb/z6x8+EL"

  groups = [
    aws_iam_group.self_managing.name,
    module.developer_group_dev.group_name
  ]

  providers = {
    aws = aws.account-management
  }
}
