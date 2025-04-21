resource "aws_apigatewayv2_deployment" "example" {
  api_id      = aws_apigatewayv2_api.api.id
  description = "Deployment da API ${var.api_name}"

  lifecycle {
    create_before_destroy = true
  }
  depends_on = [ aws_apigatewayv2_api.api ]
}