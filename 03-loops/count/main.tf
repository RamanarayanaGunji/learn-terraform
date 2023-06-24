resource "null_resource" "null" {
count =10  ## second stage
}


### 3rd stage
resource "null_resource" "null" {
count =length(var.fruits)
}

provisioner "local-excec" {
command = "echo Fruit Name - $ {var.fruits[count.index]}"
}

variable "fruits" {
default = ["apple", "banana", "orange" ]
}