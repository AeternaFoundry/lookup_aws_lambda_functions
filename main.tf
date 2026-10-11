data "aws_lambda_functions" "lambda_functions_lookup" {
  for_each = var.lambda_functions_lookup

  region = each.value.region
}

