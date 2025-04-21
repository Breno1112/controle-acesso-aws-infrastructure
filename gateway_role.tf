resource "aws_iam_role" "lock_apigateway_role" {
  name = "${var.lock_api_name}-execution-role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "apigateway.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    name = "${var.lock_api_name}-execution-role"
  }
}

resource "aws_iam_role_policy" "lock_apigateway_role_policy" {
  name = "${var.lock_api_name}-execution-role-policy"
  role = aws_iam_role.lock_apigateway_role.name

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "lambda:InvokeFunction",
        ]
        Effect   = "Allow"
        Resource = module.lambda.lambda_arn
      },
    ]
  })
}