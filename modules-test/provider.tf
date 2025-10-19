terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
      
      backend "s3" {
        bucket         = "remote-state-demo-devops"
        key            = "modules-test"
        region         = "us-east-1"
        encrypt        = true # Optional: Enable server-side encryption
        use_lockfile   = true
      }
    

}

provider "aws" {
  # Configuration options
}