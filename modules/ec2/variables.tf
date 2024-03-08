variable "nom_instance" {
  description = "Nom de l'instance EC2"
  type    = string
}

variable "type" {
  description = "Type de l'instance EC2"
  type    = string
}

variable "user_data" {
  description = "Script de démarrage de l'instance EC2"
  type    = string
}

variable "nom_role" {
  description = "Nom du role de l'instance EC2"
  type    = string
}