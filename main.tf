provider "aws" {
    region = var.region[0]
}
# Creating AWS INSTANCE 
resource "aws_instance" "my_ec2" {
    ami = var.ami_id
    instance_type = var.type
    key_name = aws_key_pair.my_key.key_name 
    # resourcetpye.resourcename.keyname
    # in this scenerio we are calling the below defined key
    vpc_security_group_ids = [ aws_security_group.sg-1.id , aws_security_group.sg-2.id ]
    # resourcetype.resourcename.id
    tags = {
        Environment = "Dev"
        Name = "Machine For Key Pair"
    }
}
# ssh-keygen -f tf_ec2_key
resource "aws_key_pair" "my_key" {
    key_name = "my-ec2-key"
    public_key = file ("tf_ec2_key.pub")
 # basically here we are using file function
}