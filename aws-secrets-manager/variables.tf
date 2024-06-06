
variable "region" {
  description = "AWS region where secrets will be created."
  type        = string
  default     = "us-west-2"
}

variable "secret_name" {
  description = "Name of the secret."
  type        = string
}

variable "secret_description" {
  description = "Description of the secret."
  type        = string
  default     = "Managed by Terraform"
}

variable "secret_value" {
  description = "Secret value."
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}