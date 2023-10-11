variable "aws_region" {
  type        = string
  description = "región padrón"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "esse profile esta setado no file credentials"
  default = "rogertf"
}

variable "instance_ami" {
  type        = string
  description = "padronización de AMIs"
  default     = "ami-067d1e60475437da2"
}

variable "instance_type" {
  type        = string
  description = "SKU da instancia"
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = "Padronización de Tags"
  default = {
    Name    = "Ubuntu"
    Project = "Aprendiendo TF"
  }
}
