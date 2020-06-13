variable "vpc_id" {
}

variable "ssh_key_name" {
}

variable "tags" {
  description = "Map of tags for the elb and rabbit instances"
  type = map(any)
  default = {
    "RabbitMQ" = true
  }
}

variable "name" {
  default = "main"
}

variable "min_size" {
  description = "Minimum number of RabbitMQ nodes"
  default     = 2
}

variable "desired_size" {
  description = "Desired number of RabbitMQ nodes"
  default     = 2
}

variable "max_size" {
  description = "Maximum number of RabbitMQ nodes"
  default     = 2
}

variable "subnet_ids" {
  description = "Subnets for RabbitMQ nodes"
  type        = list(string)
}

variable "nodes_additional_security_group_ids" {
  type    = list(string)
  default = []
}

variable "elb_additional_security_group_ids" {
  type    = list(string)
  default = []
}

variable "instance_type" {
  default = "m5.large"
}

variable "instance_volume_type" {
  default = "standard"
}

variable "instance_volume_size" {
  default = "0"
}

variable "instance_volume_iops" {
  default = "0"
}

variable "vhost_array" {
  type    = list(string)
  default = ["/"]
}

variable "admin_user" {
  type    = string
  default = "admin"
}

variable "admin_password" {
  type = string
}

variable "rabbit_password" {
  type = string
}

variable "rabbit_user" {
  type    = string
  default = "rabbit"
}

variable "secret_cookie" {
  type = string
}

variable "ssl_cert_arn" {
  type = string
}