resource local_file name1 {
  filename = "explicit.txt"
  content  = "This is a random string from: ${random_string.name2.id}" 
  depends_on = [ random_string.name2 ]
}

resource random_string name2 {
  length = 10
}