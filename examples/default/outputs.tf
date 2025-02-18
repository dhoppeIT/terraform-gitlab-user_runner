output "id" {
  description = "The ID of the gitlab runner"
  value       = module.gitlab_user_runner.id
}

output "token" {
  description = "The authentication token to use when setting up a new runner with this configuration"
  value       = module.gitlab_user_runner.token
  sensitive   = true
}
