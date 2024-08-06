variable filename1 {
  type = string
  default = "sample1.txt"
}

variable contentNumber {
  type = number
  default = 26
}

variable contentBoolean {
  type = bool
  default = true
}

variable contentList {
  type = list(string)
  default = [ "red", "green", "blue" ]
}

variable contentTuple {
  type = tuple([ string, bool, number ])
  default = [ "white", true, 26 ]
}

variable contentMap {
  type = map
  default = { name = "Robson", age = 26 }
}