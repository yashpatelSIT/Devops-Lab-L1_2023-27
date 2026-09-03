terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "output" {
  filename = "output.txt"
  content  = "Hello from Terraform!\nName: Yash Patel\nPRN: 23070122235\nDevOps Lab TW2\n"
}
