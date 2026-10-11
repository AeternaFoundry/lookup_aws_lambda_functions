output "lambda_functions_lookup_id" {
  description = "Map of id values across all lambda_functions_lookup, keyed the same as var.lambda_functions_lookup"
  value       = { for k, v in data.aws_lambda_functions.lambda_functions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_functions_lookup_function_arns" {
  description = "Map of function_arns values across all lambda_functions_lookup, keyed the same as var.lambda_functions_lookup"
  value       = { for k, v in data.aws_lambda_functions.lambda_functions_lookup : k => v.function_arns if v.function_arns != null && length(v.function_arns) > 0 }
}
output "lambda_functions_lookup_function_names" {
  description = "Map of function_names values across all lambda_functions_lookup, keyed the same as var.lambda_functions_lookup"
  value       = { for k, v in data.aws_lambda_functions.lambda_functions_lookup : k => v.function_names if v.function_names != null && length(v.function_names) > 0 }
}
output "lambda_functions_lookup_region" {
  description = "Map of region values across all lambda_functions_lookup, keyed the same as var.lambda_functions_lookup"
  value       = { for k, v in data.aws_lambda_functions.lambda_functions_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

