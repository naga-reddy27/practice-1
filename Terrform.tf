provider "aws" {
    region = "us-west-1"
    access_key = "AKIAXPCGAPYT6RSTX3FE"
    secret_key = "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"
}

resource "aws_instance" "AWSEC2Instance" {
    ami = "ami-08e637cea2f053dfa"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    key_name = "terraform"
    tags = {
        Name = "Terraform"
    }
}