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
variable "sample_string_rama2" {
  default = "Lakshminarayana"
}

output "sample_string3" {
  value ="My name is =${var.sample_string_rama2}"

}
## 10.6 is also a number in terraform
## for creating number and boolean data types:

variable "sample_number" {
  default =100
 }

variable "sample_boolean" {
 default =true
}

## booleans are true or false
# Booleans and numbers does not need to be quoted, only strings need to be quoted that to
# be with double quotes.Terraform does support for single quotes.

### variable types
# So far we have seen is default variable types#

# We have list variable types, Meaning single variable can hold multiple values
variable "sample_list" {
 default = [
 100,
 "hello",
 true,
 123
 ]
}

# data type inside the list does not matter in terraform
