terraform {
  source = "../../../../aws-secrets-manager"
}

inputs = {
  region             = "us-west-2"
  secret_name1        = get_env("SECRET_NAME1", "testing/secret1")
  secret_name2       = get_env("SECRET_NAME2", "testing/secret2")
  secret_description1 = get_env("SECRET_DESCRIPTION1", "name and password")
  secret_description2 = get_env("SECRET_DESCRIPTION2", "api key")
  secret_value1       = get_env("SECRET_VALUE1", "{\"name\": \"Example1Username\",\"password\": \"Example1Pass\"}")
  secret_value2       = get_env("SECRET_VALUE2", "{\"key\": \"somestring\"}")
 
  tags = {
    Environment = get_env("TAG_ENVIRONMENT", "dev")
    Project     = get_env("TAG_PROJECT", "secrets-manager")
  }
}
