variable "api_name" {
  type = string
  description = "Nome da API que será criada"
}

variable "api_description" {
  type = string
  description = "Descrição da API que será criada"
}

variable "api_body_file_path" {
  type = string
  description = "Caminho do arquivo OpenAPI V2 da API que será criada"
}