resource "local_file" "pets" {
  filename        = var.filename
  content         = "My pets name is ${data.local_file.dog.content}"
  file_permission = "0600"
}

data "local_file" "dog" {
  filename = "dog.txt"
}