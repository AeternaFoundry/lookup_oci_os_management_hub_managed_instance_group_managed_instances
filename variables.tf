variable "os_management_hub_managed_instance_group_managed_instances_lookup" {
  description = <<EOT
Map of os_management_hub_managed_instance_group_managed_instances_lookup, attributes below
Required:
    - managed_instance_group_id
Optional:
    - compartment_id
    - compartment_id_in_subtree
    - display_name
    - display_name_contains
    - managed_instance_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    managed_instance_group_id = string
    compartment_id            = optional(string)
    compartment_id_in_subtree = optional(bool)
    display_name              = optional(list(string))
    display_name_contains     = optional(string)
    managed_instance_id       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

