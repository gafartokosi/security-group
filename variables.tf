variable "region" {
  type        = string
  description = "Aws region"
  default     = "ca-central-1"
}

variable "ami_id" {
  type        = string
  description = "ec2 ami id"
  default     = "ami-00a9d33da68845ef8"
}

variable "ec2_size" {
  type        = string
  description = "ec2 size"
  default     = "t2.micro"
}

variable "ec2_tag" {
  type        = string
  description = "ec2 tag name"
  default     = "Hello World"
}

variable "port_1" {
  type        = string
  description = "https"
  default     = 443
}

variable "port_2" {
  type        = string
  description = "http"
  default     = 80
}

variable "port_3" {
  type        = string
  description = "SSH"
  default     = 22
}

variable "public_ip" {
  type        = bool
  description = "associate public ip address"
  default     = "true"
}
