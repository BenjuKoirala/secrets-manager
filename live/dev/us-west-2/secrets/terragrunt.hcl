terraform {
  source = "../../../../aws-secrets-manager"
}

inputs = {
  region             = "us-west-2"
  secret_name1        =  "testing/secret1"
  secret_name2       =  "testing/secret2"
  secret_description1 =  "credentials"
  secret_description2 = "api key"
  secret_value1       = get_env("SECRET_VALUE1", "")
  secret_value2       = get_env("SECRET_VALUE2", "")
 
  tags = {
    Environment = get_env("TAG_ENVIRONMENT", "dev")
    Project     = get_env("TAG_PROJECT", "secrets-manager")
  }
}
