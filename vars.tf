variable "aws_region" {
  type        = string
  description = "AWS region to use for deployment. Passed as a variable from the pipeline."
  default     = "eu-west-2"
}