# simplified main.tf placeholder
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = { Name = "${var.project_name}-vpc" }
}

resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.availability_zone
  tags = { Name = "${var.project_name}-public-subnet" }
}

resource "aws_instance" "ec2" {
  ami           = "ami-061fe7df6ad657197" # placeholder, user should replace
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  subnet_id     = aws_subnet.public_subnet.id
  tags = { Name = "${var.project_name}-ec2" }
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket_name
  tags = { Name = "${var.project_name}-bucket" }
}
