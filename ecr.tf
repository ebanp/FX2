resource "aws_ecr_repository" "fx2_ecr" {
  name                 = "fx2_terraform_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    name        = "terraform_ecr"
    environment = "username"
  }

}