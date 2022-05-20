variable "aws_access_key" {
  type        = string
  description = "AWS IAM User Access key"
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  description = "AWS IAM User Secret key"
  sensitive   = true
}


variable "aws_region" {
  type        = string
  description = "AWS Region for resources"
  sensitive   = false
  default     = "us-east-1"
}

variable "key_name" {
  type        = string
  description = "EC2 Private Key File Name"
  sensitive   = true
}

variable "instance_type" {
  type        = string
  description = "Type for EC2 Isntance"
  default     = "t3a.medium"
}


variable "company" {
  type        = string
  description = "Company name for resource tagging"
}

variable "project" {
  type        = string
  description = "Web Server"
}
