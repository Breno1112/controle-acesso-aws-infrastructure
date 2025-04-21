variable "lambda_name" {
  type = string
  description = "Nome do lambda"
}

variable "lambda_file" {
  type = string
  description = "Caminho do arquivo zip contendo o lambda"
}

variable "lambda_handler" {
  type = string
  description = "Caminho do método inicial do lambda"
}

variable "lambda_role_arn" {
  type = string
  description = "ARN do Role de execução do lambda"
}