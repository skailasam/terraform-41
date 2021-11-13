resource "local_file" "pets" {
  filename        = var.filename
  content         = "Mine pets name is ${random_pet.my-pet.id}"
  file_permission = "0600"
}

resource "local_file" "newpet" {
  filename        = "doggy.txt"
  content         = "My pets name is ${data.local_file.dog.content}"
  file_permission = "0600"
}

data "local_file" "dog" {
  filename = "dog.txt"
}

resource "random_pet" "my-pet" {
  prefix    = var.prefix[0]
  separator = " "
  length    = var.length
}
