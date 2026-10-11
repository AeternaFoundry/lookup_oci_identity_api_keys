data "oci_identity_api_keys" "identity_api_keys_lookup" {
  for_each = var.identity_api_keys_lookup

  user_id = each.value.user_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

