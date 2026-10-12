variable "agent_pool_allowed_workspaces" {
  description = <<EOT
Map of agent_pool_allowed_workspaces, attributes below
Required:
    - agent_pool_id
    - allowed_workspace_ids
EOT

  type = map(object({
    agent_pool_id         = string
    allowed_workspace_ids = set(string)
  }))
}

