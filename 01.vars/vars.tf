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

# We have a dictionary (or map) Meaning single variable over the iist when we declare the data
variable "sample_dict" {
  default ={
   number1 =100
   string1 ="hello raising"
   number2=1123
   boolean=true
   number3=12.56
  }
}

## This is the preferred variable over the list when we declare the data.
## for creating dynamic variables

variable "env" {}
variable "auto_num1" {}
variable "sample1" {}
