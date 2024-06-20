resource "aws_iam_role" "s3_access_role" {
  name               = "S3-Access-Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
        Action    = "sts:AssumeRole"
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "s3_access_policy_attachment" {
    role = aws_iam_role.s3_access_role.name
    policy_arn = aws_iam_policy.s3_read_policy.arn
  
}
