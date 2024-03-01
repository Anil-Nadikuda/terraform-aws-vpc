variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "common_tags" {
    type = map
    default = {}
}

variable "vpc_tags" {
    type = map
    default = {}
}
variable "project_name" {
    type = string
}
variable "environment" {
    type = string
}
variable "igw_tags" {
    type = map 
    default = {}
 }
 variable "public_subnets_cidr" {
    type = list
    validation {
      condition = length(var.public_subnets_cidr) ==2
      error_message = "please give 2 public valid subnet CIDR"
    } 
 }
 variable "public_subnets_tags" {
    default = {}
 }

  variable "private_subnets_cidr" {
    type = list
    validation {
      condition = length(var.private_subnets_cidr) ==2
      error_message = "please give 2 private valid subnet CIDR"
    } 
 }
 variable "private_subnets_tags" {
    default = {}
 }