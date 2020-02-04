module "training-remote" {
  source = "./modules/workspace"

  name       = "tf-cloud-training-remote"
  operations = true # full access

  training_access  = "plan"
  training_team_id = tfe_team.training.id
}
