resource "kubernetes_service_account" "s3_access_service_account" {
    metadata {
      name = "s3-access-service-account"
      namespace = "default"
      annotations = {
        "eks.amazonaws.com/role-arn" = aws_iam_role.s3_access_role.arn
      }
    }
  
}