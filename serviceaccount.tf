module "iam_eks_role" {
  source    = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  role_name = "my-app"
}

module "attach_policy" {
  source = "./attach_policy.tf"
  role_name = module.iam_eks_role.role_arn
  
}