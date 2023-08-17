variable "model_data_bucket_name" {
  description = "The name of the S3 bucket to store model data"
  type        = string
}

variable "model_data_key" {
  description = "The key of the S3 object to store model data"
  type        = string
}

variable "model_name" {
  description = "The name of the model to create"
  type        = string
}

variable "endpoint_name" {
  description = "The name of the endpoint to create"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "ml.t2.medium"
}

variable "instance_count" {
  description = "The type of instance to create"
  type        = number
  default     = 1
}
