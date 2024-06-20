variable "aws_region" {
    description = "The region in which the resources get created " 
}

variable "main_cidr" {
    description = "vpc cidr block "  
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type = list(string)
}

variable "public_subnets" {
    description = "List of public subnet CIDR blocks"
    type = list(string)
}

variable "cluster_version" {
  description = "eks_cluster_version"
}

variable "Environment" {
  description = "In which the resources are created"
  type = string
  
}
#https://youtu.be/r-DU2HUFvYY?si=lyio3nvjji-sB7Jz

# variable "role_name" {
#   description = "rolename"
#   type = string
  
# }
# variable "policy_arn" {
#   description = "policy arn"
#   type = string
  
# }

