variable "vpc_cidr" {
	default = "10.10.0.0/16"
}

variable azs{
    type = list
    default = ["ap-south-1a", "ap-south-1b"]
}

variable public_subnets_cidr{
    type = list
    default=["10.10.1.0","10.10.2.0"]
}

variable private_subnets_cidr{
    type = list
    default=["10.10.3.0","10.10.4.0"]
}