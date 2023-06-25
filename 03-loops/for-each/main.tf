
### 3rd stage
resource "null_resource" "fruits" {
for_each =var.fruits

provisioner "local-exec" {
    command ="echo Fruit Name - ${each.key} -${each.value}"
   // ## prints number of items are giving, here out put is 3( three)
   // #command = "echo ${length(var.fruits)}"

}
}
variable "fruits" {
   default = {
   apple =100
   orange =2000
   banana =1000
  }
}