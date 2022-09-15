resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-tf-test-bucket-sjd-1992"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
