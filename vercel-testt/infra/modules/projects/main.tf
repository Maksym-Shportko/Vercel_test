terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}
resource "vercel_project" "this" {
  name                                    = var.name
  framework                               = "nextjs"
}
