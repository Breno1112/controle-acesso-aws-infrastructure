module api {
    source = "./modules/apigateway"
    api_name = "lock-api"
    api_body_file_path = "./files/api_body.yaml"
    api_description = "API responsável por pedir ao NodeMCU para destravar a porta"
}