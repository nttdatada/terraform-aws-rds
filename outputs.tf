# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# Terraform Module - AWS RDS

### AWS RDS ###

output "rds_hostname" {

    description = "RDS instance hostname"
    value       = aws_db_instance.rds.address
    sensitive   = true
}

output "db_parameter_group" {

    description = "Name DB Parameter Group"
    value = aws_db_parameter_group.db_parameter_group.name
}

#output "db_subnet_group_name" {
#
#    description = ""
#    value = aws_db_subnet_group_name.db_subnet_group_name.name
#  
#}