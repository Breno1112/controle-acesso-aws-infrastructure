resource "aws_apigatewayv2_api" "api" {
  name          = var.api_name
  protocol_type = "HTTP"
  description = var.api_description
  body = file(var.api_body_file_path)
}

