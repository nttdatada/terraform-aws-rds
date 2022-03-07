# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# Terraform Module - AWS RDS


resource "aws_db_instance" "rds" {

    for_each                = var.rds 

    engine                  = each.value["engine"]
    engine_version          = each.value["engine_version"]
    identifier              = each.value["identifier"]
    instance_class          = each.value["instance_class"]

    name                    = each.value["name"]
    username                = each.value["username"]
    password                = each.value["password"]   
    allocated_storage       = each.value["allocated_storage"]

    storage_type            = each.value["storage_type"]
    storage_encrypted       = each.value["storage_encrypted"]
    iops                    = each.value["iops"]

    backup_retention_period = each.value["backup_retention_period"]
    backup_window           = each.value["backup_window"]
    maintenance_window      = each.value["maintenance_window"]

    multi_az                = each.value["multi_az"]
    port                    = each.value["port"]
    publicly_accessible     = each.value["publicly_accessible"]

    vpc_security_group_ids  = each.value["vpc_security_group_ids"] 
    db_subnet_group_name    = each.value["db_subnet_group_name"]
    parameter_group_name    = each.value["parameter_group_name"]
    apply_immediately       = each.value["apply_immediately"]

    monitoring_role_arn     = each.value["monitoring_role_arn"]
    monitoring_interval     = each.value["monitoring_interval"]
    kms_key_id              = each.value["kms_key_id"]
 
    tags                    = var.tags
}