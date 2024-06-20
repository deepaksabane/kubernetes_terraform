provider "kubernetes" {
    config_path = "~/.kube/config"
  
}

resource "kubernetes_service_account" "my_app_sa" {
    metadata {
        name = my_app_sa
        namespace = "default"
        annotations = {
             "eks.amazonaws.com/role-arn" = module.iam_eks_role.role_arn
        }
    }
  
}