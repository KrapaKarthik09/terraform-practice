variable "region" {
  description = "Please enter the region used to deploy this infrastructure"
  default = "ap-south-1"
  type        = string
}
variable "eks_cluster_version" {
  description = "Please enter the EKS cluster version"
  default = "1.22"
  type        = string
}
variable "eks_cluster_name" {
  description = "Please enter an EKS cluster name"
  default = "karth-eks-cluster"
  type        = string
}
variable "lin_instance_type" {
  description = "Please enter the instance type to be used for the Linux worker nodes"
  default = "t2.micro"
  type        = string
}
variable "lin_min_size" {
  description = "Please enter the minimal size for the Linux ASG"
  default = "1"
  type        = string
}
variable "lin_max_size" {
  description = "Please enter the maximal size for the Linux ASG"
  default = "3"
  type        = string
}
variable "lin_desired_size" {
  description = "Please enter the desired size for the Linux ASG"
  default = "1"
  type        = string
}
variable "win_min_size" {
  description = "Please enter the minimal size for the Windows ASG"
  default = "1"
  type        = string
}
variable "win_max_size" {
  description = "Please enter the maximal size for the Windows ASG"
  default = "3"
  type        = string
}
variable "win_desired_size" {
  description = "Please enter the desired size for the Windows ASG"
  default = "1"
  type        = string
}
variable "win_instance_type" {
  description = "Please enter the instance type to be used for the Windows worker nodes"
  default = "t2.micro"
  type        = string
}
variable "node_host_key_name" {
  description = "Please enter the name of the SSH key pair that should be assigned to the worker nodes of the cluster"
  default = "karth-eks-key"
  type        = string
}

variable "profile" {
   description = "Please enter the profile for AWS config"
   default = "personal"
   type = string
}

variable public_subnets_cidr{
    type = list
    default=["10.10.1.0","10.10.2.0"]
}

variable private_subnets_cidr{
    type = list
    default=["10.10.3.0","10.10.4.0"]
}

variable "vpc_id" {
    default = "vpc-048a4ae00d23fb258"
    type = string
}