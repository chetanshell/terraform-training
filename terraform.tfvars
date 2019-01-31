region                  = "us-west-1"
profile                 = "terraform"

vpc_id                  = "vpc-xxxx"
azs                     = ["us-west-1a","us-west-1c"]
subnets                 = ["subnet-xxxx", "subnet-xxxx"]
security_group_ids      = ["sg-xxxxx"]
instance_type           = "t2.micro"
key_name                = "ec2-inst"

root_block_device = {
  volume_size             = 20
    volume_type           = "gp2"
    delete_on_termination = true
}

