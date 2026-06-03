variable "region" {
    default = "eu-north-1"
}
variable "bucket_name" {
    default = "farzeen-terraform-remote-state-techzeen"
}
variable "lock_table" {
    default = "terraform-locks"
}
variable "environment" {
    default = "dev"
}