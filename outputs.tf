output "learning_bucket_name" {
  description = "The generated name of the CloudNest learning bucket."
  value       = aws_s3_bucket.learning.bucket
}

output "learning_bucket_arn" {
  description = "The Amazon Resource Name of the CloudNest learning bucket."
  value       = aws_s3_bucket.learning.arn
}

output "aws_region" {
  description = "The AWS region selected by the provider."
  value       = data.aws_region.current.name
}

output "environment_name" {
  description = "The environment name used by this configuration."
  value       = var.environment_name
}