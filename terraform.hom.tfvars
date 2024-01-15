     prefix_enviroment = "Hom"

    # VPC
    cidr_block_vpc = "10.0.0.0/16"

    # SubNet
    cidr_block_subnet_public = "10.0.1.0/24"
    availability_zone_id_subnet_public = "sa-east-1a"

    # Sucurity Group
    ip_public_ssh = "0.0.0.0/0"
    name_security_group = "meu-security-group-2"

    # EC2
    ami_id_ec2 = "ami-01b33f2637768083e"
    instancy_type_ec2 = "t2.micro"
    chave_ssh_name = "minha-chave"

    # EBS
    size_volume_root_block = 10
    size_volume_ebs_g2 = 10
    size_volume_ebs_g3 = 20
    size_volume_ebs_g3_iops = 3000