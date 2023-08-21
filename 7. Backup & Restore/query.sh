# Backeup
pg_dump --host=localhost --username=mathius --password --dbname=postgresql_basic --format=plain --file=/Users/mathius/code/Learning/learning-postgresql/backup.sql

# Restore
psql --host=localhost --username=mathius --password --dbname=belajar_backup --file=/Users/mathius/code/Learning/learning-postgresql/backup.sql