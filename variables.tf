variable "aws_region" {
    description = "AWS region" 
    type = string
    }
variable "project_name" { 
    description = "Name prefix"
    type = string 
    }
variable "instance_type" { 
    description="EC2 type" 
    type = string 
    default="t3.micro"
    }
variable "key_pair_name" { 
    description="SSH key" 
    type = string 
    }
variable "vpc_cidr" { 
    description="VPC CIDR" 
    type = string 
    } 
variable "public_subnet_cidr" { 
    description="Subnet CIDR" 
    type = string 
    }
variable "ssh_allowed_cidr" { 
    description="SSH allowed cidr" 
    type = string 
    }
variable "s3_bucket_name" { 
    description="Bucket name" 
    type = string 
    }
variable "availability_zone" { 
    description="availability zone" 
    type = string 
    }

