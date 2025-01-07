terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
  access_key = "AKIAWQUOZH545FH7KA4R"
  secret_key = "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"
}

resource "aws_vpc" "simple_vpc" {
  cidr_block           = "10.0.0.0/16"
  tags = {
    Name = "SimpleVPC"
  }
}