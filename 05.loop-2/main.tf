variable "fruits1" {
  default = {
    apple = 10
    banana = 100
  }
}


variable "fruits2" {
  default = {
    apple = {
      name = "apple"
      quantity = 10
    }
    banana = {
      name = "banana"
      quantity = 100
    }
  }
}

resource "null_resource" "test1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }
}