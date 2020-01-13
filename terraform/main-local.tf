resource "tfe_workspace" "training" {
  name         = "tf-cloud-training-local"
  organization = local.org_name

  operations        = false # state storage only
  terraform_version = "0.12.19"
}

resource "tfe_team_access" "training" {
  access       = "read"
  team_id      = tfe_team.training.id
  workspace_id = tfe_workspace.training.id
}
