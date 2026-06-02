terraform {
    backend "s3" {
        bucket = "farzeen-terraform-remote-state-techzeen"
        key = "dev/project/terraform.tfstate"
        region = "eu-north-1"
        dynamodb_table = "terraform-locks"
        encrypt = true
    }
}