# Terraform Modules AWS RDS

### PREREQUSITES


### SETUP

```shell

# Module
module "rds-example" {

    source

    rds         = var.rds
    tags        = var.tags
} 


# Environment

rds = {

    "mysql-predicta-dev" = {

        engine                  = ""
        engine_version          = ""
        identifier              = ""
        instance_class          = ""
        name                    = ""
        username                = ""
        password                = ""
        allocated_storage       = ""
        storage_type            = ""
        storage_encrypted       = false  
        iops                    = 0

        backup_retention_period = 0
        backup_window           = "04:00-06:00"
        maintenance_window      = "sun:06:00-sun:08:00"

        multi_az                = false
        port                    = 3306
        publicly_accessible     = false
        apply_immediately       = false


        vpc_security_group_ids  = [ "" ]
        db_subnet_group_name    = ""
        parameter_group_name    = ""

        monitoring_role_arn      = ""
        monitoring_interval      = 0
        kms_key_id               = ""

    }
}


tags = {
    Environment = "stage"
    module      = "AWS RDS"
    Terraform   = true
    Organizarion = "NTTDATA"
    Departament = "DA"
}

```
### INFRA AS CODE

```shell
Terraform
Version:
```

### VERSION

```shell
Version: 
```

### CONSIDERATIONS

```shell

```

### LICESING

```shell
NTTDATA - DIGITAL ARCHITETECTURE
```
