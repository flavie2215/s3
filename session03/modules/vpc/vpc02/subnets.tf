
# # Resource: aws_subnet
# # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

 resource "aws_subnet" "eks-private-subnet-01" {
  

   vpc_id = aws_vpc.main.id

   cidr_block = "10.0.1.0/24"
   availability_zone = "us-east-1a"

   tags = {
     "Name" = "eks-private-subnet-01"

     "kubernetes.io/role/internal-elb" = "1"

     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
   }
 }

# # ---------------------------------------------------------------------------

 resource "aws_subnet" "eks-private-subnet-02" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.2.0/24"
   availability_zone = "us-east-1b"

  tags = {
     "Name" = "eks-private-subnet-02"

     "kubernetes.io/role/internal-elb" = "1"
     "kubernetes.io/cluster/demo-cluster" = "shared" # you need to tag your cluster with the tag equal to EKS cluster name. The value can be owned if you only use it for Kubernetes or share if you share it with other services or other EKS cluster

     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
   }
 }

# # ---------------------------------------------------------------------------

 resource "aws_subnet" "eks-public-subnet-03" {
    map_public_ip_on_launch = true
    vpc_id = aws_vpc.main.id
   cidr_block = "10.0.3.0/24"
   availability_zone = "us-east-1a"

   tags = {
     "Name" = "eks-public-subnet-03"
     "kubernetes.io/role/internal-elb" = "1"
     "kubernetes.io/cluster/demo-cluster" = "shared" 
     "kubernetes.io/cluster/${var.cluster_name}" = "shared"
   }
 }

















