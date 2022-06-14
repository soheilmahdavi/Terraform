############# Create Groups #############
resource "aws_iam_group" "groups" {
    count = length(var.group)
    name = element(var.group, count.index)

}

############# assign policy to group #############
resource "aws_iam_group_policy_attachment" "policy-test-attach" {
    count = length(var.group)
    group = element(aws_iam_group.groups.*.name, count.index)

    policy_arn = aws_iam_policy.policy_one.arn
}