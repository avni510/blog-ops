resource "aws_s3_bucket" "blog" {
  bucket = "avni-blog"
  acl = "public-read"
  policy = "${file("aws/policy.json")}"
  website {
    index_document = "index.html"
  }
}
