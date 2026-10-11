variable "identity_api_keys_lookup" {
  description = <<EOT
Map of identity_api_keys_lookup, attributes below
Required:
    - user_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    user_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

