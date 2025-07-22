output "vpc_id" {
  value = aws_vpc.smart_agri_vpc.id
}

output "subnet_id" {
  value = aws_subnet.smart_agri_subnet.id
}

output "sensor_node_public_ip" {
  value = aws_instance.sensor_node.public_ip
}

