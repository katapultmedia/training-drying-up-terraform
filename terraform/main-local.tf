module "training-local" {
  source = "./modules/workspace"

  name       = "tf-cloud-training-local"
  operations = false # state storage only

  training_access  = "read"
  training_team_id = tfe_team.training.id
}
