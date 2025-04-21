output "execute_api_endpoint" {
  value = aws_apigatewayv2_api.api.api_endpoint
}

output "api_version" {
  value = aws_apigatewayv2_api.api.version
}

output "api_route_execution" {
  value = aws_apigatewayv2_api.api.execution_arn
}