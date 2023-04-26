
# # Resource: aws_route_table
# # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

 resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

   route {
     cidr_block = "0.0.0.0/0"
     gateway_id = aws_internet_gateway.main.id
   }

   tags = {
     Name = "public"
  }
 }

# #-----------------------------------------------------------------

 resource "aws_route_table" "eks-private-01-route" {
   vpc_id = aws_vpc.main.id

   route {
    cidr_block = "0.0.0.0/0"
     nat_gateway_id = aws_nat_gateway.gw1.id
   }

   tags = {
     Name = "eks-private-01-route"
   }
 }


# #-----------------------------------------------------------------

 resource "aws_route_table" "eks-private-02-route" {
   vpc_id = aws_vpc.main.id
   route {
     cidr_block = "0.0.0.0/0"
     nat_gateway_id = aws_nat_gateway.gw2.id

   }

   tags = {
     Name = "eks-private-02-route"
   }
 }


# #-----------------------------------------------------------------

 resource "aws_route_table" "db-private-01-route" {
  
   vpc_id = aws_vpc.main.id

   route {
     cidr_block = "0.0.0.0/0"
     nat_gateway_id = aws_nat_gateway.gw1.id
   }

  tags = {
     Name = "db-private-01-route"
   }
 }

# #-----------------------------------------------------------------

 resource "aws_route_table" "db-private-02-route" {
   vpc_id = aws_vpc.main.id

   route {
     cidr_block = "0.0.0.0/0"

     nat_gateway_id = aws_nat_gateway.gw1.id
   }

   tags = {
     Name = "db-private-02-route"
   }
 }


