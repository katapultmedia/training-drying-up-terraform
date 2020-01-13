resource "tfe_workspace" "training_remote" {
  name         = "tf-cloud-training-remote"
  organization = local.org_name

  operations        = true # full access
  terraform_version = "0.12.19"
}

resource "tfe_team_access" "training_remote" {
  access       = "plan"
  team_id      = tfe_team.training.id
  workspace_id = tfe_workspace.training_remote.id
}
