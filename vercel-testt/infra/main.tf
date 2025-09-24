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
