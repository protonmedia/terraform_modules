
locals {
  alternate_domain_name_sanitized  = replace(var.alternate_domain_names[0], ".", "-")
  create_waf_rule_to_whitelist_ips = length(var.whitelisted_ip_addresses) > 0
}
