variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "AWS vpc"
  type        = string
  default     = "fx2-terraform-vpc"
}