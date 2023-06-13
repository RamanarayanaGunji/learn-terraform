## the way of declaring a variables
variable "sample_string" {
  default = "Hello World"
}

## Shell scripting equivalent sample_string =" Hello World"

variable "sample_string_rama1" {
  default = "Ramanarayana"
}

output "sample_string2" {
  value ="My name is =${var.sample_string_rama1}"

}

