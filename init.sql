"USE [master]
RESTORE DATABASE [AdventureWorks2022]
FROM DISK = '/var/opt/mssql/backupAdventureWorks2022.bak' 
WITH 
    MOVE 'AdventureWorks2022_Primary' TO '/var/opt/mssql/data/AdventureWorks2022.mdf',
    MOVE 'AdventureWorks2022_Log' TO '/var/opt/mssql/data/AdventureWorks2022_Log.ldf'"