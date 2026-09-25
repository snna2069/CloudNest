data "aws_region" "current" {}

locals {
  name_prefix = "cloudnest-${var.environment_name}-"

  common_tags = {
    Environment = var.environment_name
    ManagedBy   = "Terraform"
    Project     = "CloudNest"
  }
}

resource "aws_s3_bucket" "learning" {
  bucket_prefix = local.name_prefix

  tags = merge(local.common_tags, {
    Name = "CloudNest ${var.environment_name} learning bucket"
  })
}