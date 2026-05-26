variable "runner_type" {
  type        = string
  description = "The scope of the runner"

  validation {
    condition     = contains(["instance_type", "group_type", "project_type"], var.runner_type)
    error_message = "Valid values are instance_type, group_type, project_type"
  }
}

variable "access_level" {
  type        = string
  default     = "not_protected"
  description = "The access level of the runner"

  validation {
    condition     = contains(["not_protected", "ref_protected"], var.access_level)
    error_message = "Valid values are not_protected, ref_protected"
  }
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the runner"
}

variable "group_id" {
  type        = number
  default     = null
  description = "The ID of the group that the runner is created in. Required if runner_type is group_type"
}

variable "locked" {
  type        = bool
  default     = false
  description = "Specifies if the runner should be locked for the current project"
}

variable "maintenance_note" {
  type        = string
  default     = null
  description = "Free-form maintenance notes for the runner (max 1024 characters)"

  validation {
    condition     = var.maintenance_note == null || length(var.maintenance_note) <= 1024
    error_message = "The maintenance_note must be 1024 characters or fewer."
  }
}

variable "maximum_timeout" {
  type        = number
  default     = null
  description = "Maximum timeout that limits the amount of time (in seconds) that runners can run jobs. Must be at least 600 (10 minutes)"

  validation {
    condition     = var.maximum_timeout == null || var.maximum_timeout >= 600
    error_message = "The maximum_timeout must be at least 600 (10 minutes)."
  }
}

variable "paused" {
  type        = bool
  default     = false
  description = "Specifies if the runner should ignore new jobs"
}

variable "project_id" {
  type        = number
  default     = null
  description = "The ID of the project that the runner is created in. Required if runner_type is project_type"
}

variable "tag_list" {
  type        = set(string)
  default     = []
  description = "A list of runner tags"
}

variable "untagged" {
  type        = bool
  default     = true
  description = "Specifies if the runner should handle untagged jobs"
}
