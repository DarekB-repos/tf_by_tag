output "arns" {
  value = data.aws_resourcegroupstaggingapi_resources.existing.resource_tag_mapping_list.*.resource_arn
}