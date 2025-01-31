# # Resource: aws_route_table_association
# # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

 resource "aws_route_table_association" "eks-public-subnet-01-association" {
   
   subnet_id = aws_subnet.eks-public-subnet-01.id
   route_table_id = aws_route_table.public.id
 }

 resource "aws_route_table_association" "eks-public-subnet-02-association" {
  subnet_id = aws_subnet.eks-public-subnet-02.id
  route_table_id = aws_route_table.public.id
 }

 resource "aws_route_table_association" "eks-private-subnet-03-association" {
   subnet_id = aws_subnet.eks-private-subnet-03.id
  route_table_id = aws_route_table.eks-private-01-route.id
 }

 resource "aws_route_table_association" "eks-private-subnet-02-association" {
  subnet_id = aws_subnet.eks-private-subnet-02.id
  route_table_id = aws_route_table.eks-private-02-route.id
 }


 resource "aws_route_table_association" "db-private-subnet-01-association" {
   subnet_id = aws_subnet.eks-db-subnet-01.id
  route_table_id = aws_route_table.db-private-01-route.id
 }

 resource "aws_route_table_association" "db-private-subnet-02-association" {
   subnet_id = aws_subnet.eks-db-subnet-02.id
   route_table_id = aws_route_table.db-private-02-route.id
 }

