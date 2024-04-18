service {
  id      = "ext-dynamodb"
  name    = "ext-dynamodb"
  address = "dynamodb.us-east-1.amazonaws.com"
  port    = 443

  check = {
    id = "ext-dynamodb"
    name = "DynamoDB Liveprobe"
    http = "https://dynamodb.us-east-1.amazonaws.com"
    interval = "10s"
    timeout = "1s"
  }
}
