variable "ns-name" {
  description = "The namespace to use for ui daemons"
  type        = string
}

variable "release-suffix" {
  description = "The suffix added to the rucio ui release"
  type        = string
}

variable "image-tag" {
  description = "The rucio dockerhub image tag"
  type        = string
  default     = "release-1.29.8"
}


variable "rucio-vre-dn" {
  description = "Domain name of service for which grid host certificates were requested"
  type        = string
}

variable "rucio-auth-vre-dn" {
  description = "Domain name of service for which grid host certificates were requested"
  type        = string
}

variable "rucio-ui-vre-dn" {
  description = "Domain name of service for which grid host certificates were requested"
  type        = string
}

