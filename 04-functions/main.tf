##convert lower case to upper case

variable "sample" {
default ="abcxyz"
}

output "sample" {
value =upper(var.sample)
}

variable "sample1" {
default =["abc","xyz"]
}

## To print first value like var.sample1[0] with function  here we are using elements
 output "sample1" {
 value =element(var.sample1,0)
 }

 ## if any input pass is not present, to avoide error we can use lookup by passing Dummy values
 variable "sample2" {
 default = {
  xyz=100
  abc=200
  }
 }

 output "sample2" {
 value =lookup(var.sample2,"a1","Dummy/Not present")
 }