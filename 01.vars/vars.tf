## the way of declaring a variables
variable "sample_string" {
  default = "Hello World"
}

## Shell scripting equivalent sample_string =" Hello World"

## To print in the shell scripting, We use echo, following is the syntax in shell
## scho $sample_string

output "sample_string" {
   value =var.sample_string
}

## above case we are printing just variable combination of some strings then following is the syntax.output
## ${} is compulsory f we include the variable inside a string

output "sample_string1" {
  value ="value of sample string =${var.sample_string}"

}

variable "sample_string_rama1" {
  default = "Ramanarayana"
}

output "sample_string2" {
  value ="My name is =${var.sample_string_rama1}"

}

