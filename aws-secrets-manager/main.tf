# Configuring the AWS provider and using its resource aws_secretsmanager_secret with their attributes
provider "aws" {
	region = var.region
}

#Defining resource and their attributes

resource "aws_secretsmanager_secret" "secret1" {
	name = var.secret_name1
	description = var.secret_description1
	tags = var.tags
}

resource "aws_secretsmanager_secret" "secret2" {
	name = var.secret_name2
	description = var.secret_description2
	tags = var.tags
}

resource "aws_secretsmanager_secret_version" "secret_version1" {
  secret_id     = aws_secretsmanager_secret.secret1.id
  secret_string = var.secret_value1
}

resource "aws_secretsmanager_secret_version" "secret_version2" {
  secret_id     = aws_secretsmanager_secret.secret2.id
  secret_string = var.secret_value2
}



