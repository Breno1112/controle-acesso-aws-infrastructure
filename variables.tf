variable "lambda_name" {
  type = string
  description = "Nome do lambda"
}

variable "lambda_handler" {
  type = string
  description = "Caminho do método inicial do lambda"
}

variable "lock_api_name" {
  type = string
  description = "Nome da API responsável pela gestão das fechaduras"
}