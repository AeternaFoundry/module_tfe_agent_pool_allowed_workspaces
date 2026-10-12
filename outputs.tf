output "agent_pool_allowed_workspaces_id" {
  description = "Map of id values across all agent_pool_allowed_workspaces, keyed the same as var.agent_pool_allowed_workspaces except keys with no id are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_workspaces.agent_pool_allowed_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "agent_pool_allowed_workspaces_agent_pool_id" {
  description = "Map of agent_pool_id values across all agent_pool_allowed_workspaces, keyed the same as var.agent_pool_allowed_workspaces except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_workspaces.agent_pool_allowed_workspaces : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "agent_pool_allowed_workspaces_allowed_workspace_ids" {
  description = "Map of allowed_workspace_ids values across all agent_pool_allowed_workspaces, keyed the same as var.agent_pool_allowed_workspaces except keys with no allowed_workspace_ids are omitted"
  value       = { for k, v in tfe_agent_pool_allowed_workspaces.agent_pool_allowed_workspaces : k => v.allowed_workspace_ids if v.allowed_workspace_ids != null && length(v.allowed_workspace_ids) > 0 }
}

