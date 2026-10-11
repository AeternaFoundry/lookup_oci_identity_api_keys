output "identity_api_keys_lookup_id" {
  description = "Map of id values across all identity_api_keys_lookup, keyed the same as var.identity_api_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_api_keys.identity_api_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_api_keys_lookup_api_keys" {
  description = "Map of api_keys values across all identity_api_keys_lookup, keyed the same as var.identity_api_keys_lookup except keys with no api_keys are omitted"
  value       = { for k, v in data.oci_identity_api_keys.identity_api_keys_lookup : k => v.api_keys if v.api_keys != null && length(v.api_keys) > 0 }
}
output "identity_api_keys_lookup_filter" {
  description = "Map of filter values across all identity_api_keys_lookup, keyed the same as var.identity_api_keys_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_api_keys.identity_api_keys_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_api_keys_lookup_user_id" {
  description = "Map of user_id values across all identity_api_keys_lookup, keyed the same as var.identity_api_keys_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.oci_identity_api_keys.identity_api_keys_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

