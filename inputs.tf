# NTTDATA - DIGITAL ARCHITECTURE - ENGENIEER
# Create: Marcos Cianci - mlopesci@emeal.nttdata.com
# Date: Seg 7 Mar 2022
# Terraform Module - AWS RDS

variable "rds" {

    type = map(object({

        engine                  = string
        engine_version          = string
        identifier              = string
        instance_class          = string

        name                    = string
        username                = string
        password                = string

        allocated_storage       = number
        storage_type            = string
        storage_encrypted       = bool
        iops                    = number

        backup_retention_period = number
        backup_window           = string
        maintenance_window      = string

        multi_az                = bool
        port                    = number
        publicly_accessible     = bool
        
        vpc_security_group_ids  = list(string)
        db_subnet_group_name    = string
        parameter_group_name    = string    

        apply_immediately       = bool

        monitoring_role_arn     = string
        monitoring_interval     = number 
        kms_key_id              = string
                        
    }))
}

variable "tags" {}