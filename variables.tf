variable "lambda_functions_lookup" {
  description = <<EOT
Map of lambda_functions_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

