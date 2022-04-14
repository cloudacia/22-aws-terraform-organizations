
###############################################################################
# This resource creates a users group called "SelfManaging".                  #
# The users in this group will have the following permissions:                #
# * Read_access_only access.                                                  #
# * They create specific credentials, such as access keys.                    #
# * They can change their password.                                           #
#                                                                             #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_group" "self_managing" {
  name     = "SelfManaging"
  provider = aws.account-management
}

###############################################################################
# This resource attaches a policy (IAMReadOnlyAccess) to the user group       #
# SeftManaging.                                                               #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_group_policy_attachment" "iam_read_only_access" {
  group      = aws_iam_group.self_managing.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
  provider   = aws.account-management
}

###############################################################################
# This resource attaches a policy (IAMSelfManageServiceSpecificCredentials)   #
# to the user group SeftManaging.                                             #
#                                                                             #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_group_policy_attachment" "iam_self_manage_service_specific_credentials" {
  group      = aws_iam_group.self_managing.name
  policy_arn = "arn:aws:iam::aws:policy/IAMSelfManageServiceSpecificCredentials"
  provider   = aws.account-management
}

###############################################################################
# This resource attaches a policy (IAMUserChangePassword to the user group    #
# SeftManaging.                                                               #
#                                                                             #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_group_policy_attachment" "iam_user_change_password" {
  group      = aws_iam_group.self_managing.name
  policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
  provider   = aws.account-management
}

###############################################################################
# This resource creates a new policy (SelfManageVMFA).                        #                                                                              #
# This policy allows users to set up a virtual MFA.                           #
#                                                                             #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_policy" "self_manage_vmfa" {
  name     = "SelfManageVMFA"
  policy   = file("${path.module}/data/self_manage_vmfa.json")
  provider = aws.account-management
}

###############################################################################
# This resource attaches a policy (SelfManageVMFA) to a user group            #
# (SelfManaging).                                                             #
#                                                                             #
# ACCOUNT AFFECTED: Identity Account                                          #
###############################################################################
resource "aws_iam_group_policy_attachment" "self_manage_vmfa" {
  group      = aws_iam_group.self_managing.name
  policy_arn = aws_iam_policy.self_manage_vmfa.arn
  provider   = aws.account-management
}
