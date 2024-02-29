# Create database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "databasesubnetgroup"
  subnet_ids  = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description = "Subnets for database instance"

  tags = {
    Name = "Database Subnets"
  }
}

# Get the latest db snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = var.Database_Snapshot_Identifier
  most_recent            = true
  snapshot_type          = "manual"
}

# Create database instance restored from db snapshots
resource "aws_db_instance" "database_instance" {
  instance_class         = var.Database_instance_class
  skip_final_snapshot    = true
  availability_zone      = "us-east-1b"
  identifier             = var.Database_instance_identifier
  snapshot_identifier    = data.aws_db_snapshot.latest_db_snapshot.id
  db_subnet_group_name   = aws_db_subnet_group.database_subnet_group.name
  multi_az               = var.Multi-AZ-Deployment
  vpc_security_group_ids = [aws_security_group.database_security_group.id]
}
