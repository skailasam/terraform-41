# Basic types
variable "filename" {
  default     = "pets.txt"
  type        = string
  description = "Sets the filename for the pet"
}

variable "length" {
  default     = 1
  type        = number
  description = "Sets number of words that the name will consist of"
}

variable "favorite" {
  default     = true
  type        = bool
  description = "Is the pet my favourite one?"
}

# Complex types

variable "prefix" {
  default = ["Mrs.", "Mr."]
  type    = list(string)
}

variable "cat" {
  type = tuple([string, number, bool])
  default = [
    "Sylvester",
    7,
  true]
}

variable "file-content" {
  type = map(any)
  default = {
    "pet1" = "Dog",
    "pet2" = "Cat"
  }
}

variable "jerry" {
  type = object({
    name         = string
    color        = string
    age          = number
    food         = list(string)
    favorite_pet = bool
  })

  default = {
    name      = "jerry"
    color     = "grey"
    age       = 2
    food      = ["grain","vegetables"]
    favorite_pet = true
  }

  description = "Our mouse pet Jerry"
}


