variable "pool_size" {
  type    = string
  default = "s-2vcpu-4gb"
}

variable "k8s_version" {
  type    = string
  default = "1.20.2-do.0"
}

variable "ingress_nginx" {
  type    = bool
  default = false
}

variable "min_nodes" {
  type    = number
  default = 3
}

variable "max_nodes" {
  type    = number
  default = 6
}

