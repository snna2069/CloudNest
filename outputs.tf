output "learning_bucket_name" {
  description = "The generated name of the CloudNest learning bucket."
  value       = aws_s3_bucket.learning.bucket
}

output "learning_bucket_arn" {
  description = "The Amazon Resource Name of the CloudNest learning bucket."
  value       = aws_s3_bucket.learning.arn
}