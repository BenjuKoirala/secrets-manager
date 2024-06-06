terraform {
  source = "../../../../aws-secrets-manager"
}

inputs = {
  region             = "us-west-2"
  secret_name        = read_terragrunt_config("secret-values.json").inputs.secret_name
  secret_description = read_terragrunt_config("secret-values.json").inputs.secret_description
  secret_value       = read_terragrunt_config("secret-values.json").inputs.secret_value
  tags               = read_terragrunt_config("secret-values.json").inputs.tags
}
