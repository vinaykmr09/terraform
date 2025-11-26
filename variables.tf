variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316"  # Amazon Linux 2 (replace if needed)
}

variable "key_name" {
  description = "Name of the existing key pair for SSH access"
  type        = string
  default     = "my-key"  # replace with your actual key pair name
}
