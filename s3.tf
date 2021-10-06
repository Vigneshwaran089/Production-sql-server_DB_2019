resource "aws_s3_bucket" "b" {
  bucket = "cci-ik9421217-bucket-1"
  acl    = "private"

  tags = {
    Name  = "cci-ik9421217-bucket-1"
    Terraform   = "true"
    Environment = "dev"
  }
}