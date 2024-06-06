terraform {
  source = "../../../../aws-secrets-manager"
}

inputs = {
  region             = "us-west-2"
  secret_name        = get_env("SECRET_NAME", "default-secret-name")
  secret_description = get_env("SECRET_DESCRIPTION", "default-secret-description")
  secret_value       = get_env("SECRET_VALUE", "default-secret-value")
  tags = {
    Environment = get_env("TAG_ENVIRONMENT", "default-environment")
    Project     = get_env("TAG_PROJECT", "default-project")
  }
}
