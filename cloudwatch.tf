# resource "aws_cloudwatch_log_group" "cloudwatch_log_group" {
#   name = "/aws/ecs/${local.app}"
#   # 1日分のログを保持
#   retention_in_days = 1
# }