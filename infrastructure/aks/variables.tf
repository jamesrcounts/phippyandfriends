variable "environment" { type = string }

variable "log_analytics_workspace" {
  type = object({
    id   = string
    name = string
  })
}

variable "resource_group" {
  type = object({
    name     = string
    location = string
  })
}

variable "instance_id" {
  type        = string
  description = "(Required) Unique ID for this instance."
}

variable "tags" {
  type        = map(string)
  description = "(Required) Tags to apply to resources created by this module."
}