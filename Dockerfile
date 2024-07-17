FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA y
ENV MSSQL_SA_PASSWORD QWElkj132!
EXPOSE 1433

RUN mkdir /var/opt/mssql/backup

COPY AdventureWorks2022.bak /var/opt/mssql/backup

