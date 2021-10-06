# aws-dev-bastion-drift-fix

## S3 backend
    bucket = "aws-sandbox-tf-767090234737-ik9421217"
    key = "aws-dev-bastion-drift-fix.tfstate"

$ terraform init -input=false -backend-config=aws-sandbox-tf-767090234737-ik9421217 -backend-config=key=aws-dev-bastion-drift-fix.tfstate -backend-config=region=us-west-2
