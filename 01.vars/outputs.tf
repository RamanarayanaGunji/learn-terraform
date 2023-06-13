## To print in the shell scripting, We use echo, following is the syntax in shell
## echo $sample_string

output "sample_string" {
   value =var.sample_string
}

## above case we are printing just variable combination of some strings then following is the syntax.output
## ${} is compulsory f we include the variable inside a string

output "sample_string1" {
  value ="value of sample string =${var.sample_string}"

}

## values from list
# second value in list
output "sample_list_2" {
  value = var.sample_list[2]
}

## print the values for dictionary

output "sample_dict_bool" {
value =var.sample_dict["boolean"]
}
output "sample_dict_number" {
value =var.sample_dict["number1"]

}

output "env"{
value=var.env
}