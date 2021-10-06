##################################################################################
# RESOURCE
##################################################################################

resource "aws_security_group" "cci-bastion-1" {
  name        = "cci-ik9421217-bastion-1"
  description = "cci-ik9421217-bastion-1"
  vpc_id        = "vpc-03042df8d312f746d"

    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    }
}