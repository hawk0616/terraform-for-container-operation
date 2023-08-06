# data "aws_iam_policy_document" "ecs_task_assume" {
#   # ロール引き受けの権限を付与
#   statement {
#     actions = ["sts:AssumeRole"]
#     principals {
#       type        = "Service"
#       identifiers = ["ecs-tasks.amazonaws.com"]
#     }
#   }
# }

# resource "aws_iam_role" "ecs_task" {
#   name               = "${local.app}-ecs-task"
#   assume_role_policy = data.aws_iam_policy_document.ecs_task_assume.json
# }

# # タスク実行ロール用のIAMロールを作成
# data "aws_iam_policy_document" "ecs_assume" {
#   statement {
#     actions = ["sts:AssumeRole"]
#     principals {
#       type        = "Service"
#       identifiers = ["ecs-tasks.amazonaws.com"]
#     }
#   }
# }

# resource "aws_iam_role" "ecs" {
#   name               = "${local.app}-ecs"
#   assume_role_policy = data.aws_iam_policy_document.ecs_assume.json
# }

# # コンテナイメージをECRからgetしてpull
# # CloudwatchLogsにログお出力先を作成し、ログを出力する
# resource "aws_iam_role_policy_attachment" "ecs_basic" {
#   role       = aws_iam_role.ecs.name
#   policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
# }