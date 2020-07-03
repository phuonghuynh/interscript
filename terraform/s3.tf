resource "aws_s3_bucket" "this" {
  bucket = var.bucketName
  acl = "private"
}

resource "aws_s3_bucket_object" "this" {
  depends_on = [
    data.archive_file.this,
    aws_s3_bucket.this
  ]

  bucket = var.bucketName
  key = "code"
  source = "${path.module}/.archive.zip"
  acl = "private"

  etag = filemd5("${path.module}/.archive.zip")
}