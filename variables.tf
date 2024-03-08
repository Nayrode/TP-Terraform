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

variable "sns_topic_name" {
  description = "Nom de la file SNS"
  type        = string
}

variable "lambda_function_name" {
  description = "Nom de la fonction Lambda"
  type        = string
}

variable "subscriber_emails" {
  description = "Liste des emails des abonnés à la file SNS"
  type        = list(string)
}

variable "notification_message" {
  description = "Notification a envoyer aux abonnés de la file SNS"
  type        = string
}

variable "lambda_role_arn" {
  description = "ARN du role de la fonction Lambda"
  type        = string
}
