resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_function_name
  handler       = "exports.handler"
  runtime       = "python3.11"
  role          = var.lambda_role_arn
  filename      = "lambda.zip"
  publish       = true

  environment {
    variables = {
      SNS_TOPIC_ARN = aws_sns_topic.sns_topic.arn
      SNS_MESSAGE = var.notification_message
    }
  }
}

resource "aws_sns_topic" "sns_topic" {
  name = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "lambda_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.lambda.arn
}

resource "aws_sns_topic_subscription" "email_subscription" {
  count     = length(var.subscriber_emails)
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = var.subscriber_emails[count.index]
}