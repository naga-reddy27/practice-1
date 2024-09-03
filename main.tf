resource "aws_instance" "AWSEC2Instance" {
    count = "${var.NumberofInstances}"
    ami = "${var.AMI}"
    instance_type = "${var.InstanceType}"
    security_groups = ["launch-wizard-1"]
    key_name = "terraform"
    user_data = "${file("installapacheHTTPSserver.sh")}"
    tags = {
        Name = "Terraform -${count.index}"
    }
}