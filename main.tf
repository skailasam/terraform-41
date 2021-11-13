resource "local_file" "pets" {
  filename        = var.filename
  content         = var.file-content["pet1"]
  file_permission = "0600"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[0]
  separator = " "
  length    = var.length
}