# terraform-gitlab-user_runner

Terraform module to manage the following GitLab resources:

* gitlab_user_runner

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-group/local"
  version = "1.1.4"

  name = "Example (group)"
  path = "example-group-48165"
}

module "gitlab_user_runner" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-user-runner/local"
  version = "1.0.0"

  runner_type = "group_type"

  group_id = module.gitlab_group.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 17.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_user_runner.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/user_runner) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_level"></a> [access\_level](#input\_access\_level) | The access level of the runner | `string` | `"not_protected"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the runner | `string` | `null` | no |
| <a name="input_group_id"></a> [group\_id](#input\_group\_id) | The ID of the group that the runner is created in | `number` | `null` | no |
| <a name="input_locked"></a> [locked](#input\_locked) | Specifies if the runner should be locked for the current project | `bool` | `false` | no |
| <a name="input_maintenance_note"></a> [maintenance\_note](#input\_maintenance\_note) | Free-form maintenance notes for the runner | `string` | `null` | no |
| <a name="input_maximum_timeout"></a> [maximum\_timeout](#input\_maximum\_timeout) | Maximum timeout that limits the amount of time (in seconds) that runners can run jobs | `number` | `null` | no |
| <a name="input_paused"></a> [paused](#input\_paused) | Specifies if the runner should ignore new jobs | `bool` | `false` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project that the runner is created in | `number` | `null` | no |
| <a name="input_runner_type"></a> [runner\_type](#input\_runner\_type) | The scope of the runner | `string` | n/a | yes |
| <a name="input_tag_list"></a> [tag\_list](#input\_tag\_list) | A list of runner tags | `list(string)` | `[]` | no |
| <a name="input_untagged"></a> [untagged](#input\_untagged) | Specifies if the runner should handle untagged jobs | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the gitlab runner |
| <a name="output_token"></a> [token](#output\_token) | The authentication token to use when setting up a new runner with this configuration |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
