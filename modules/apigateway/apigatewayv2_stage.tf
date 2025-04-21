resource "aws_apigatewayv2_stage" "prod_stage" {
  api_id = aws_apigatewayv2_api.api.id
  name   = "prod"
}