# main.tf

# Define the provider
provider "aws" {
  region = "us-east-1"  # Specify the AWS region
}

# Define the S3 bucket resource
resource "aws_s3_bucket" "mys3" {
  bucket = "vinay-s3-bucket"  # Specify a globally unique bucket name
  # Enable versioning for the bucket (optional)
  versioning {
    enabled = true
  }

  # Define access control configurations (optional)
  # For example, allow public read access to the objects in the bucket
  acl = "private"

  # Define tags for the bucket (optional)
  tags = {
    Name        = "mys3"
    Environment = "Production"
  }
}

# Upload the file to the S3 bucket
resource "aws_s3_bucket_object" "my_object" {
  bucket = aws_s3_bucket.mys3.bucket  # Use the bucket created above
  key    = "VINAY DL.jpeg"           # Name of the file in S3 bucket
  source = "C:\\Users\\vnaid\\OneDrive\\Desktop\\VINAY DL.jpeg"  # Path to the local file
}

