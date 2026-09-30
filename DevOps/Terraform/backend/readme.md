
````
terraform {
  backend "s3" {
    bucket = "tf-infra-backend-example"
    region = "ap-southeast-1"
    key = "terraform.tfstate"
    profile = "tf-user"
  }
}
````
