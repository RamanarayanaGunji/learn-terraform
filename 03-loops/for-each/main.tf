
### 3rd stage
resource "null_resource" "fruits" {
for_each =var.fruits

provisioner "local-exec" {
    command ="echo Fruit Name - ${var.fruits[each.key]} "
   // ## prints number of items are giving, here out put is 3( three)
   // #command = "echo ${length(var.fruits)}"

}
}
variable "fruits" {
default = {
   apple =10
   orange =200
   banana =100
}
}