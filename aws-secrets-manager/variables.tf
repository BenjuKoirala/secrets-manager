
variable "region" {
  description = "AWS region where secrets will be created."
  type        = string
  default     = "us-west-2"
}

variable "secret_name1" {
  description = "Name of the secret."
  type        = string
}

variable "secret_name2" {
  description = "Name of the secret."
  type        = string
}

variable "secret_description1" {
  description = "Description of the secret1."
  type        = string
  default     = "Managed by Terraform"
}

variable "secret_description2" {
  description = "Description of the secret2."
  type        = string
  default     = "Managed by Terraform"
}

variable "secret_value1" {
  description = "Secret value of secret1."
  type        = string
  sensitive   = true
}

variable "secret_value2" {
  description = "Secret value of secret2."
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

