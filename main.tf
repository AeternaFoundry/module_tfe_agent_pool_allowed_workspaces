resource "tfe_agent_pool_allowed_workspaces" "agent_pool_allowed_workspaces" {
  for_each = var.agent_pool_allowed_workspaces

  agent_pool_id         = each.value.agent_pool_id
  allowed_workspace_ids = each.value.allowed_workspace_ids
}

