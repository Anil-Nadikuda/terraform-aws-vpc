output "azs" {
    value = slice(data.aws_availability_zones.azs.names,0,2)

}
output "vpc_id" {
    value = aws_vpc.main.id
}