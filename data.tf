data "aws_resourcegroupstaggingapi_resources" "existing" {
  resource_type_filters =["s3:bucket"]
  tag_filter {
    key = "aws:cloudformation:logical-id"
    values=["AudioRecordingsBucket"]
  }
}

