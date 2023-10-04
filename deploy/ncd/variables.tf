variable prefix {
  default = "student"
}

variable lab_instance {
  default = "ncd"
}

variable dns_root {
  default = "skillscloud.company"
}

variable "rustack_admin_token" {
    type        = string

    # Self client admin
    default     = "api_key"
}

variable "rustack_root_token" {
    type        = string
    default     = "token"   
}

variable "rustack_domain" {
    type        = string
    default     = "uid"
    # cloud.nsalab.org
}

variable "rustack_entity" {
    type        = string
    
    # Self client
    default     = "api_token" 
}

variable "rustack_api_endpoint" {
    type        = string
    default     = "https://cloud.nsalab.org"
}

variable "s3_endpoint" {
    type        = string
    default     = "https://s3.sbcloud.online"
}

variable "s3_bucket_images" {
    type        = string
    default     = "nsalab/images/demo"
}

variable "s3_access_key" {
    type        = string
    default     = "key"
}

variable "s3_secret_key" {
    type        = string
    default     = "yAQkZ3HbnMAu9ExUA9SkI6HbNy6gFFZj6UW0IgKY"
}
