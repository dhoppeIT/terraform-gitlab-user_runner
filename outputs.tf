output "id" {
  description = "The ID of the gitlab runner"
  value       = gitlab_user_runner.this.id
}

output "token" {
  description = "The authentication token to use when setting up a new runner with this configuration"
  value       = gitlab_user_runner.this.token
  sensitive   = true
}
