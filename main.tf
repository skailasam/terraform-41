resource "local_file" "pets" {
  filename        = "my_pet.txt"
  content         = "My dog"
  file_permission = "0600"
}

resource "random_pet" "my-pet" {
  prefix          = "Mrs."
  separator       = " "
  length          = "1"
}