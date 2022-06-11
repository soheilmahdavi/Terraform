data "aws_iam_policy_document" "cross_account_assume_role_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = var.principal_arns
    }

    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "instance-assume-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "roles" {
    name = var.role
    assume_role_policy = data.aws_iam_policy_document.instance-assume-role-policy.json
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
    role = aws_iam_role.roles.name
    policy_arn = aws_iam_policy.policy_two.arn
}