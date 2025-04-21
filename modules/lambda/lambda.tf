resource "aws_lambda_function" "python_lambda_function" {
  filename      = var.lambda_file
  function_name = var.lambda_name
  role          = var.lambda_role_arn
  handler       = var.lambda_handler

  source_code_hash = filebase64sha256(var.lambda_file)

  runtime = "python3.12"
}