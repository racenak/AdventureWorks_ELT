#!/bin/bash

# Run docker container
docker run --name oltp -p 1433:1433 -v oltpdata:/var/opt/mssql -d sql-server

#wait for the SQL Server to come up
sleep 30s

#run the setup script to create the DB and the schema in the DB
docker exec -it oltp /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P QWElkj132! -d master -Q "USE [master]
RESTORE DATABASE [AdventureWorks2022]
FROM DISK = '/var/opt/mssql/backup/AdventureWorks2022.bak' 
WITH 
    MOVE 'AdventureWorks2022' TO '/var/opt/mssql/data/AdventureWorks2022.mdf',
    MOVE 'AdventureWorks2022_Log' TO '/var/opt/mssql/data/AdventureWorks2022_Log.ldf'"