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

terraform {
  required_providers {
    dummy = {
      source = "nfx04/dummy"
    }
  }
}

resource "dummy_thing" "this1" {
  for_each = var.fruits1
  name = "${each.key} = ${each.value}"
}