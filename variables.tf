variable "name" {
  type        = string
  description = "Name of the SG. Will be suffixed with an unique id."
}

variable "description" {
  type        = string
  description = "Description of the SG."
}

variable "vpc_id" {
  type        = string
  description = "VPC ID."
  default     = null
}

variable "ingress" {
  type        = list(any)
  description = "Map containing the definition of the ingress rules."
}

variable "egress" {
  type        = list(any)
  description = "Map containing the definition of the ingress rules."
}


variable "tags" {
  type        = map(string)
  description = "Tags to apply to the resource."
}
