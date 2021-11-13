resource "local_file" "pets" {
  filename        = var.filename
  content         = "My dog"
  file_permission = "0600"
}

resource "random_pet" "my-pet" {
  prefix          = "Mrs."
  separator       = " "
  length          = var.length
}