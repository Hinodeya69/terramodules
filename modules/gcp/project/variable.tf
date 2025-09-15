variable name {
  description = "The name of the project."
  type        = string
}

variable project_id {
  description = "The ID of the project. Must be globally unique."
  type        = string
}

variable billing_account {
  description = "The billing account ID to associate with the project."
  type        = string
}

variable folder_id {
  description = "The folder ID to place the project in (optional)."
  type        = string
  default     = null
}

variable service {
  description = "The service to enable in the project."
  type        = string
  default     = "compute.googleapis.com"
}

variable disable_on_destroy {
  description = "Whether to disable the service when the project is deleted."
  type        = bool
  default     = false
}