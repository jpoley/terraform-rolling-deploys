resource "aws_key_pair" "deployer" {
     key_name   = "NV"
     public_key = "${file("ssh_keys/NV.pub")}"
}
