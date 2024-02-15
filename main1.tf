# upload_file.tf

# Define the provider
provider "aws" {
  region = "us-east-1"  # Specify the AWS region
}

# Upload the file to the existing S3 bucket
resource "aws_s3_bucket_object" "mys3" {
  bucket = "vinay-s3-bucket"  # Use the existing bucket name
  key    = "VINAY DL.jpeg"     # Name of the file in S3 bucket
  source = "C:\\Users\\vnaid\\OneDrive\\Desktop\\VINAY DL.jpeg"  # Path to the local file
}
