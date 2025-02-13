resource "aws_s3_bucket" "fx2_bucket" {
  bucket = "fx2-terraform-bucket"

  tags = {
    name        = "terraform_bucket"
    environment = "username"
  }

}