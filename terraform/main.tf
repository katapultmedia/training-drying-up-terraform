locals {
  org_name = "katapultmediainc"
}

resource "tfe_team" "training" {
  name         = "training"
  organization = local.org_name
}
