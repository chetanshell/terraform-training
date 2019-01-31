region                  = "us-west-1"
profile                 = "terrauser"

vpc_id                  = "vpc-b3cf11d4"
azs                     = ["us-west-1a","us-west-1b"]
subnets                 = ["subnet-490e8e12", "subnet-8fa9dfe8"]
security_group_ids      = ["sg-0d84fb31d78397289"]
instance_type           = "t2.micro"
ami                     = "ami-18726478"
key_name                = "ec2-inst"

root_block_device = {
  volume_size             = 20
    volume_type           = "gp2"
    delete_on_termination = true
}

