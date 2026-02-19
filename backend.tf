terraform {
  required_version = ">= 1.5"

  backend "s3" {
    bucket         = "terraform-state-pravallika"
    key            = "multi-env/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
