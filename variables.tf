variable "aws_region" {
  description = "AWS region in which to manage CloudNest resources."
  type        = string
  default     = "us-east-1"
}

variable "environment_name" {
  description = "Short name for the deployment environment."
  type        = string
  default     = "dev"

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.environment_name))
    error_message = "environment_name must contain only lowercase letters, numbers, and hyphens."
  }
}