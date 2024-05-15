
resource "aws_db_instance" "default" {
  identifier                     = "mssql-instance"
  allocated_storage              = 20
  storage_type                   = "gp2"
  engine                         = "sqlserver-se"
  engine_version                 = "15.00"
  instance_class                 = "db.t3.micro"
  db_name                        = "terraform test"
  username                       = "admin"
  password                       = "password"
  publicly_accessible            = false
  multi_az                       = false
  backup_retention_period        = 7
  skip_final_snapshot            = true
 # tags = {
    #Name = "mssql_instance"
 # }
}