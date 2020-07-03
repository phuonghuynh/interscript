data "archive_file" "this" {
  type        = "zip"
  output_path = "${path.module}/.archive.zip"
  source_dir  = "${path.module}/src"
}

resource "aws_lambda_function" "this" {
  depends_on = [
    aws_s3_bucket.this,
    aws_s3_bucket_object.this
  ]

  description = "testing ruby function"
  role        = aws_iam_role.this.arn
  runtime     = "ruby2.7"


  s3_bucket = var.bucketName
  s3_key = "code"

  function_name = var.name
  handler       = "lambda_function.handler"

  timeout     = var.fn_timeout
  memory_size = var.fn_memory_size
  publish     = true
}

