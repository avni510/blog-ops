{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["s3:PutObject", "s3:PutObjectAcl"],
      "Resource": ["${bucket_arn}/*"],
      "Effect": "Allow",
      "Principal":{
        "AWS":"arn:aws:iam::182416214218:root"
      }
    },
    {
      "Action":["s3:GetObject"],
      "Resource":["${bucket_arn}/*"],
      "Effect":"Allow",
      "Principal": "*"
    }
  ]
}
