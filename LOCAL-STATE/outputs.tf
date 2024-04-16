output "bucket_id" {
  description = "ID da Bucket criada na AWS"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arm" {
  description = "ARN da Bucket criada na AWS"
  value       = aws_s3_bucket.bucket.arn

}