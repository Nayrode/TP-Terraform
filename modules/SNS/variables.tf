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