# secrets-manager

# Terraform AWS Secrets Manager Module

This project contains a Terraform module (`aws-secrets-manager`) and Terragrunt configurations (`live`) for managing secrets in AWS Secrets Manager. 
The module allows secure storage and retrieval of secrets, such as database credentials or API keys.

## Getting Started

### Prerequisites
- Install Terraform
```
brew install terraform
```
- Install Terragrunt
```
brew install terragrunt
```
- Install jq
```
brew install jq
```
- Install git-crypt
```
brew install git-crypt
```

- An AWS account with appropriate IAM roles (see below).

### IAM Roles Needed

To use this module, the following IAM roles are required:
```
secretsmanager:UntagResource
secretsmanager:DescribeSecret
secretsmanager:DeleteResourcePolicy
secretsmanager:PutSecretValue
secretsmanager:CreateSecret
secretsmanager:DeleteSecret
secretsmanager:GetResourcePolicy
secretsmanager:GetSecretValue
secretsmanager:PutResourcePolicy
secretsmanager:ListSecrets
secretsmanager:TagResource
```

## Setting Up the Project
1.
```
git clone https://github.com/BenjuKoirala/secrets-manager.git
```
```
cd secrets-manager
```

2. Navigate to the environment directory
```
cd live/dev/us-west-2/secrets
```

3. Update the `secret-value.json` with desired secret key and value
4. Initialize terragrunt
```
terragrunt init
```
5. Apply the configuration
```
terragrunt apply
```

## Security Considerations
* Git-Crypt: This project uses Git-Crypt to encrypt sensitive files (secret-values.json) before commiting to repository.