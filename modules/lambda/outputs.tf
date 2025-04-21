output "lambda_arn" {
  value = aws_lambda_function.python_lambda_function.arn
  description = "ARN do lambda criado"
}