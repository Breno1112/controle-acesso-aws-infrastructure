terraform {
  backend "s3" {
    bucket = "fachinis-terraform-state"
    key    = "statefiles/lock-unlock-arduino/infrastructure.tfstate"
    region = "us-east-1"
  }
}