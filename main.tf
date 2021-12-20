# Creating VPC
# resource "aws_vpc" "test_vpc" {
#   cidr_block        = "10.0.0.0/16"
#   #instance_tenancy = "default"

#   tags = {
#     Name = "test_vpc"
#   }
# }

# # Creating public subnet
# resource "aws_subnet" "test_pub_sub" {
#   vpc_id            = aws_vpc.test_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "test_pub_sub"
#   }
# }

# # creating a single private subnet
# resource "aws_subnet" "test_prv_sub" {
#   vpc_id            = aws_vpc.test_vpc.id
#   cidr_block        = "10.0.2.0/24"
#   availability_zone = "us-east-1a"

#   tags = {
#     Name = "test_prv_sub"
#   }
# }

# #create a frontend security group
# resource "aws_security_group" "frontend_sg" {
#   name        = "frontend_sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.test_vpc.id

#   ingress {
#       description      = "ssh from VPC"
#       from_port        = 22
#       to_port          = 22
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"] 
#     }
#     ingress {
#       description      = "http from VPC"
#       from_port        = 80
#       to_port          = 80
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"] 
#     }
#   egress   {
#       from_port        = 0
#       to_port          = 0
#       protocol         = "-1"
#       cidr_blocks      = ["0.0.0.0/0"]
#     }  

#   tags = {
#     Name = "frontend_sg"
#   }
# }


# #Create a Internet Gateway
# resource "aws_internet_gateway" "data2_IGW" {
#   vpc_id = aws_vpc.test_vpc.id

#   tags = {
#     Name = "data2_IGW"
#   }
# }
# # EIP for NAT gateway
# resource "aws_eip" "EIP_Nat" {
#    vpc      = true

# }
# # Create a Nat Gateway
# resource "aws_nat_gateway" "data2_Nat" {
#   allocation_id = aws_eip.EIP_Nat.id
#   subnet_id     = aws_subnet.test_pub_sub.id
#   tags = {
#     Name = "data2_Nat"
#   }
# }
# #creating public route table
# resource "aws_route_table" "data2_pub_RT" {
#   vpc_id = aws_vpc.test_vpc.id
#    route {
#       cidr_block = "0.0.0.0/0"
#       gateway_id = aws_internet_gateway.data2_IGW.id
#   }
#   tags = {
#     Name = "data2_pub_RT"
#   }
# }
# #creating a prv route table
# resource "aws_route_table" "data2_prv_RT" {
#   vpc_id = aws_vpc.test_vpc.id  
#    route {
#       cidr_block = "0.0.0.0/0"
#       nat_gateway_id = aws_nat_gateway.data2_Nat.id
#   }
#   tags = {
#     Name = "data2_prv_RT"
#   }
# }
# #associate public SN to public route table
# resource "aws_route_table_association" "datatest_rt_pub" {
#   subnet_id      = aws_subnet.test_pub_sub.id
#   route_table_id = aws_route_table.data2_pub_RT.id
# }
# #associate private SN to private route table
# resource "aws_route_table_association" "datatest_rt_prv" {
#   subnet_id      = aws_subnet.test_prv_sub.id
#   route_table_id = aws_route_table.data2_prv_RT.id
# }
# Create KEY PAIR
# resource "aws_key_pair" "test_key" {
#   key_name   = "test_key"
#   public_key = file(var.path_to_public_Key)
# } 
