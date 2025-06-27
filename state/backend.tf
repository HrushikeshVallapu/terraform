terraform {
  backend "s3" {
    bucket = "remote-state-demo-devops"
    key    = "remote-state-demo"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}