resource "null_resource" "null" {
count =10  ## second stage
}


### 3rd stage
resource "null_resource" "fruits" {
count =length(var.fruits)
}

variable "fruits" {
default = ["apple", "banana", "orange" ]
}