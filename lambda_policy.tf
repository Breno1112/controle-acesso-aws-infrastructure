resource "aws_iam_role" "lambda_role" {
  name = "${var.lambda_name}-execution-role"

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
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    name = "${var.lambda_name}-execution-role"
  }
}

resource "aws_iam_role_policy" "lambda_policy" {
  name        = "${var.lambda_name}-execution-role-policy"
  role = aws_iam_role.lambda_role.arn

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iot:Publish",
        ]
        Effect   = "Allow"
        Resource = "arn:aws:iot:us-east-1:143221775863:topic/controleacesso-nodemcu/sub"
      },
    ]
  })
}