-- $Id: 05_archivelog.sql 12704 2007-03-29 19:47:19Z marcus.ferreira $

CONNECT SYS/oracle AS SYSDBA

SHUTDOWN IMMEDIATE

STARTUP MOUNT
    ALTER DATABASE ARCHIVELOG;
    ALTER SYSTEM ARCHIVE LOG START;
    ALTER DATABASE OPEN;

