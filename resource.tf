resource "aws_dynamodb_table" "basic-dynamodb-table" {
    name="test-table12341412"
    hash_key = "Id"
    read_capacity=1
    write_capacity=1

    attribute {
      name="Id"
      type ="S"
    }
}