################################################################################
# This file contains the definition of variables used for setting up           #
# AWS account for Application Teams.                                           #                                                                         #
#                                                                              #
################################################################################

locals {

  ##############################
  #                            #
  #       JARVIS TEAM          #
  #                            #
  ###############################
  account_name_jarvis = {
    dev        = "jarvis-dev"
    staging    = "jarvis-stagging"
    production = "jarvis-prod"
  }

  account_owner_email_jarvis = {
    dev        = "jarvis-dev@cloudacia.com"
    staging    = "jarvis-stagging@cloudacia.com"
    production = "jarvis-prod@cloudacia.com"
  }

  ##############################
  #                            #
  #       TIE METERS TEAM      #
  #                            #
  ###############################
  account_name_tie_meters = {
    dev = "tie-meters-dev-dev"
  }

  account_owner_email_tie_meters = {
    dev = "tie-meters-dev@cloudacia.com"
  }


  ##############################
  #                            #
  #       IT TEAM              #
  #                            #
  ##############################

  account_name_it_team = {
    identity     = "account-management"
    logging      = "via-logging-account"
    core-service = "via-core-service-account"
    security     = "via-security-account"
    backups      = "via-backup-account"
    hosting      = "via-hosting-account"
  }

  account_owner_email_it_team = {
    identity     = "account-management@cloudacia.com"
    logging      = "via-aws-logging-account@viascience.com"
    core-service = "via-aws-core-service-account@viascience.com"
    security     = "via-aws-security-account@viascience.com"
    backups      = "via-aws-backups-account@viascience.com"
    hosting      = "via-aws-hosting-account@viascience.com"
  }
}
