resource "tfe_workspace" "this" {
  name              = var.name
  organization      = var.organization
  operations        = var.operations
  terraform_version = var.terraform_version
}

resource "tfe_team_access" "this" {
  access       = var.training_access
  team_id      = var.training_team_id
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "aws_access_key" {
  key          = "AWS_ACCESS_KEY"
  value        = "ABC123"
  category     = "terraform"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "aws_secret_key" {
  key          = "AWS_SECRET_KEY"
  value        = "DEF456"
  category     = "terraform"
  workspace_id = tfe_workspace.this.id
}

resource "tfe_variable" "aws_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = "us-east-2"
  category     = "terraform"
  workspace_id = tfe_workspace.this.id
}
