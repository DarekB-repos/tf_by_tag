output "bucket_arn" {
  value = data.aws_resourcegroupstaggingapi_resources.existing.resource_tag_mapping_list.*.resource_arn
}


output "lambda_arn" {
  value = data.aws_resourcegroupstaggingapi_resources.kvs_lambda_arn.resource_tag_mapping_list.*.resource_arn[0]
}
output "lamdbaIamRoleArn" {
  value = data.aws_iam_role.dKvsIamRole
}

