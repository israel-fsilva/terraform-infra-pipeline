resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_vpc" "main" {
  cidr_block = "${var.CIDR_BASE_16}.0.0/16"
  tags = {
    Name = "${var.PREFIX}-vpc"
    Project = "${var.PROJECT_ID}"
  }
}