variable "name" {
  default = "test-ruby-func"
}

variable "fn_timeout" {
  default = 3
}

variable "fn_memory_size" {
  default = 128
}

#lambda config bucket
variable "bucketName" {
  default = "interscript-lambda"
}

