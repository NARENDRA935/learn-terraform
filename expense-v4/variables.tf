variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0eda81a962cebfc79"]
}

variable "zone_id" {
  default = "Z055598033M3BHHZMYMN6"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name = "mysql"
      instance_type = "t3.micro"
    }
  }
}






