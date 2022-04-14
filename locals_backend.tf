locals {
  tie_meter_terraform_state_bucket_name = {
    dev        = "tie-meters-terraform-state-dev"
    staging    = "tie-meters-terraform-state-stagging"
    production = "acme-corp-terraform-state-production"
  }
}
