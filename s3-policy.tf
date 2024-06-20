resource "aws_iam_policy" "s3_read_policy" {
  name        = "S3-Read-Access-Policy"
  description = "IAM policy for read access to all S3 buckets"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "s3:GetObject",
          "s3:ListBucket"
        ]
        Resource = "*"
      },
    ]
  })
}
