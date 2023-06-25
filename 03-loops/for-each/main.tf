
### 3rd stage
resource "null_resource" "fruits" {
for_each =var.fruits

provisioner "local-exec" {
    command ="echo Fruit Name - ${each.key} -${each.value}"
   // ## prints number of items are giving, here out put is 3( three)
   // #command = "echo ${length(var.fruits)}"
}
}

resource "null_resource" "fruits1" {
for_each =var.fruits1

provisioner "local-exec" {
    command ="echo Fruit1 Name - ${each.key} -${each.value}"
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

variable "fruits1" {
   default ={
    apple ={
     name ="apple"
     count =58
    }
    orange ={
      name ="orange"
      count =24
     }
    apple ={
      name ="banana"
      count =12
    }

   }

}