# module api {
#     source = "./modules/apigateway"
#     api_name = "lock-api"
#     api_body_file_path = "./files/api_body.yaml"
#     api_description = "API responsável por pedir ao NodeMCU para destravar a porta"
# }

module lambda {
    source = "./modules/lambda"
    lambda_file = "lambda.zip"
    lambda_name = var.lambda_name
    lambda_handler = var.lambda_handler
    lambda_role_arn = aws_iam_role.lambda_role.arn
}