data "aws_eks_cluster" "cluster" {
    name = module.eks.cluster_id

}

data "aws_eks_cluster_auth" "cluster" {
    name = module.eks.cluster_id
  
}

resource "aws_iam_openid_connect_provider" "oidc_provider" {
    client_id_list =  ["sts.amazonaws.com"]
    thumbprint_list = [data.aws_eks_cluster.cluster.certificate_authority[0].data]
    url             = data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}