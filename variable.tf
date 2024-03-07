variable "myproj1s3bucket" {
    default = [
        "s3buck1",
        "s3buck2"
    ]
  
}
variable "myec2" {
    default = [
        "ec1",
        "ec2",
        "ec3"
    ]
  
}
variable "instance_count" {

  
  default = "3"
}