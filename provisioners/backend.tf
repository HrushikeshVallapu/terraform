terraform {
  backend "s3" {
    bucket = "remote-state-demo-devops"
    key    = "provisioner-demo"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}