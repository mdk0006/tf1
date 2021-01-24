resource "aws_security_group" "sg-1" {
    name = "ec2-sg"
    description = "for ec2 machine"
    ingress {
        from_port= 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ssh port"
    }
    ingress {
        from_port= 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "http port"
    }
    egress {
        from_port=0
        to_port=0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    # -1 for any

    
}
resource "aws_security_group" "sg-2" {
    name = "ec2-sg2"
    description = "for ec2 machine"
    ingress {
        from_port= 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "ssh port"
    }
    ingress {
        from_port= 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "http port"
    }
    egress {
        from_port=0
        to_port=0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    # -1 for any

    
}