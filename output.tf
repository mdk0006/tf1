output "public_ip" {
    value = aws_instance.my_ec2.public_ip
}
output "egress" {
    value = aws_security_group.sg-1.egress
}
output "ingress" {
    value = aws_security_group.sg-1.ingress
}