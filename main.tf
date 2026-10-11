data "oci_os_management_hub_managed_instance_group_managed_instances" "os_management_hub_managed_instance_group_managed_instances_lookup" {
  for_each = var.os_management_hub_managed_instance_group_managed_instances_lookup

  managed_instance_group_id = each.value.managed_instance_group_id
  compartment_id            = each.value.compartment_id
  compartment_id_in_subtree = each.value.compartment_id_in_subtree
  display_name              = each.value.display_name
  display_name_contains     = each.value.display_name_contains
  managed_instance_id       = each.value.managed_instance_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

