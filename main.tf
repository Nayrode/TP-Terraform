module "ec2" {
  source  = "./modules/ec2"
  nom_instance = var.nom_instance
  type = var.type
  user_data = var.user_data
  nom_role = var.nom_role
}

module "SNS" {
  source  = "./modules/SNS"
  sns_topic_name = var.sns_topic_name
  lambda_function_name = var.lambda_function_name
  subscriber_emails = var.subscriber_emails
  notification_message = var.notification_message
  lambda_role_arn = var.lambda_role_arn
}