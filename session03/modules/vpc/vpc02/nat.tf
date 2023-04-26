# # Resource: aws_nat_gateway
# # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway

 resource "aws_nat_gateway" "gw1" {
   allocation_id = aws_eip.nat1.id
   subnet_id = aws_subnet.eks-public-subnet-01.id
   
   tags = {
     Name = "adl-eks-vpc-nat-01"
   }
 }

 resource "aws_nat_gateway" "gw2" {
   allocation_id = aws_eip.nat2.id
   subnet_id = aws_subnet.eks-public-subnet-02.id

   tags = {
     Name = "adl-eks-vpc-nat-02"
   }
 }








