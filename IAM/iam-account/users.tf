
############# Create Users #############
resource "aws_iam_user" "username" {
    count = length(var.usernames)
    name = element(var.usernames, count.index)
  
}


############# assign user to group #############
resource "aws_iam_group_membership" "attach_user_to_group" {
  name= "test"  
  count = length(var.usernames)
  users = [element(aws_iam_user.username.*.name, count.index)]
  group = aws_iam_group.groups[0].name

  #group = element(aws_iam_group.groups.*.name, length(var.group))
 
}

