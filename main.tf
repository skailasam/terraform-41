resource "local_file" "pets" {
  filename        = var.filename
  content         = "My pets name is ${random_pet.my-pet.id}"
  file_permission = "0600"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[0]
  separator = " "
  length    = var.length
}
