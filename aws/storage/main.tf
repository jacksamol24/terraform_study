#-----------storage/main.tf---------------

# Create Random ID

resource "random_id" "tf_bucket_id" {
    byte_length = 2
}

# Create Bucket

resource "aws_s3_bucket" "tf_code" {
    bucket  = "${var.project_name}-${random_id.tf_bucket_id.dec}"
    acl     = "private"
    force_destroy   = true
    tags = {
      name    = "tf_bucket"
    }
}