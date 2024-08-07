terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

resource random_integer name {
  min = 0
  max = 100
}