resource "aws_iam_role" "this" {
  #name = "Developer"
  name = var.role_name

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17"
    "Statement" : [
      {
        "Effect" : "Allow"
        "Principal" : {
          "AWS" : var.trusted_entity
        },
        "Action" : "sts:AssumeRole",
        "Condition" : {
          "Bool" : {
            "aws:MultiFactorAuthPresent" : "true"
          }
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "administrator_access" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = aws_iam_role.this.name
}
