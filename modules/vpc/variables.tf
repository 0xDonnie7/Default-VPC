variable "name" {
  description = "The name of the vpc"
  type        = string
  default     = "default"
}

variable "vpc_cidr" {
  description = "The CIDR block for the vpc"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition = can(cidrnetmask(var.vpc_cidr)) && try(
      tonumber(split("/", var.vpc_cidr)[1]) >= 16 &&
      tonumber(split("/", var.vpc_cidr)[1]) <= 20,
      false
    )
    error_message = "vpc_cidr must be a valid IPv4 CIDR with a prefix between /16 and /20 so the generated subnets fit AWS limits."
  }
}
