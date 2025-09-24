resource "vercel_project_environment_variable" "ft_created_variable" {
  project_id = vercel_project.this.id
  key        = "VAR_CREATED_BY_TERRAFORM"
  value      = "SOME_SECRET_TOKEN"
  target     = ["production"]
}
