module "gitlab_user_runner" {
  source = "../../"

  runner_type = "group_type"

  group_id = data.gitlab_group.this.id
}
