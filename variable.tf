variable "region" {
    type = list
    default = [ "us-east-1","eu-central-1"]
}
variable "ami_id" {
    default = "ami-0be2609ba883822ec"
}
variable "type" {
    default = "t2.micro"
}