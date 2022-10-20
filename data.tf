data "aws_resourcegroupstaggingapi_resources" "existing" {
  resource_type_filters =["s3:bucket"]
  tag_filter {
    key = "aws:cloudformation:logical-id"
    values=["AudioRecordingsBucket"]
  }
}



data "aws_resourcegroupstaggingapi_resources" "kvs_lambda_arn" {
  resource_type_filters =["lambda:function"]
  tag_filter {
    key = "aws:cloudformation:logical-id"
    values=["KvsProcessRecordingLambdaFunction"]
  }
}

data "aws_lambda_function" "dKvSFuntion" {
  function_name =  data.aws_resourcegroupstaggingapi_resources.kvs_lambda_arn.resource_tag_mapping_list.*.resource_arn[0]
}

data "aws_iam_role" "dKvsIamRole" {
  name = split("/",data.aws_lambda_function.dKvSFuntion.role)[1]
}