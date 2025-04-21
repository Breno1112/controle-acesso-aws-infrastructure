module api {
    source = "./modules/apigateway"
    api_name = "lock-api"
    api_body_file_path = "./files/api_body.yaml"
    api_description = "API responsável por pedir ao NodeMCU para destravar a porta"
}

module lambda {
    source = "./modules/lambda"
    lambda_file = "lambda.zip"
    lambda_name = var.lambda_name
    lambda_handler = var.lambda_handler
    lambda_role_arn = aws_iam_role.lambda_role.arn
}



resource "aws_lambda_permission" "apigateway_invoke_lambda_permission" {
  statement_id  = "PermiteAPIFechaduraInvocarLambdaFechadura"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_name
  principal     = "apigateway.amazonaws.com"

  # The /*/*/* part allows invocation from any stage, method and resource path
  # within API Gateway REST API.
  source_arn = "${module.api.api_route_execution}/*/POST/unlock"
}