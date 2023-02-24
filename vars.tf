variable "VPC_CIDR" {}
variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_VPC_RT" {}
variable "PRIVATE_HOSTEDZONE_ID" {}
variable "PUBLIC_HOSTEDZONE_ID" {}
variable "PRIVATE_HOSTEDZONE_NAME" {}
variable "PUBLIC_HOSTEDZONE_NAME"
variable "ENV" {}
variable "PUBLIC_SUBNET_CIDR" {}
variable "PRIVATE_SUBNET_CIDR" {}
variable "AZ" {}

PRIVATE_HOSTEDZONE_NAME = "roboshop.internal"
PUBLIC_HOSTEDZONE_NAME = "robos-shop.online"