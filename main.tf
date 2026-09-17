resource "aws_s3_bucket" "learning" {
  bucket_prefix = "cloudnest-learning-"

  tags = {
    Name = "CloudNest learning bucket"
  }
}