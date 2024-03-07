resource "aws_instance" "ec2_instance" {
  ami           = "ami-022661f8a4a1b91cf"  # Replace with your desired AMI ID
  instance_type = "t2.micro"               # Replace with your desired instance type
  count = var.instance_count
  tags = {
    name = var.myec2[count.index]
    
}
}
resource "aws_iam_policy" "policy" {
  name        = "test_policy"
  path        = "/"
  description = "My test policy"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}