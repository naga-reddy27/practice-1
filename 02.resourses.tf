resource "aws_instance" "today" {
    count = "3"
    ami = "ami-0aa7d40eeae50c9a9"
    instance_type = "t2.micro"
    security_groups = ["launch-wizard-1"]
    key_name = "terraform"
    tags = {
        Name = "myTerraform"
    }
  
}