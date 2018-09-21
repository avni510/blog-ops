resource "aws_s3_bucket" "blog" {
  bucket = "avnikothari.com"
  acl = "public-read"
  website {
    index_document = "index.html"
  }
}

data "template_file" "blog_policy" {
  template = "${file("aws/policy.json.tpl")}"
  vars {
    bucket_arn = "${aws_s3_bucket.blog.arn}"
  }
}

resource "aws_s3_bucket_policy" "blog_bucket_policy" {
  bucket = "${aws_s3_bucket.blog.id}"
  policy = "${data.template_file.blog_policy.rendered}"
}
