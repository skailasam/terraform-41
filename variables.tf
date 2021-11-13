variable "filename" {
  default     = "my_pet.txt"
  type        = string
  description = "Sets the filename for the pet"
}
variable "length" {
  default      = 1
  type         = number
  description  = "Sets number of words that the name will consist of"
}