locals {
  vercel_api_token = "wXskMdnNjfTTYxDVbP4CXDNq"
}

terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}

provider "vercel" {
  # Or omit this for the api_token to be read
  # from the VERCEL_API_TOKEN environment variable
  api_token = local.vercel_api_token
}


resource "vercel_project" "example" {
  name      = "terraform-test-project"
  framework = "nextjs"
  git_repository = {
    type = "github"
    repo = "Maksym-Shportko/Vercel_test"
  }
}

resource "vercel_project_environment_variable" "ft_created_variable" {
  project_id = "prj_hqnENA3zS9bg2DnFArM8d8x20LNV"
  key        = "VAR_CREATED_BY_TERRAFORM_for_main"
  value      = "SOME_SECRET_TOKEN2"
  target     = ["production"]
}

resource "vercel_project_domain" "terraform-test-project" {
  project_id = "prj_hqnENA3zS9bg2DnFArM8d8x20LNV"
  domain     = "shportkodomain.vercel.app"
}
