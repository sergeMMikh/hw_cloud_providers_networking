output "instances_info" {
  description = "Information about each instance"
  value = {
    public_vm = {
      instance_name = aws_instance.public_vm[0].tags["Name"]
      external_ip   = aws_instance.public_vm[0].public_ip
      fqdn          = aws_instance.public_vm[0].public_dns
    }
    # db_instance = {
    #   # instance_name = aws_instance.netology-develop-platform-db[0].tags["Name"]
    #   external_ip = aws_instance.netology-develop-platform-db[0].public_ip
    #   fqdn        = aws_instance.netology-develop-platform-db[0].public_dns
    # }
  }
}
