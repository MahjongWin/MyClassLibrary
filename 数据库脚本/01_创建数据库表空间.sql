--创建表空间
CREATE TABLESPACE DOTNETDEMO
    LOGGING 
    DATAFILE 'E:\MyDatabase\oracle\DOTNETDEMO.ora' SIZE 50M REUSE 
    AUTOEXTEND 
    ON NEXT  10M MAXSIZE UNLIMITED EXTENT MANAGEMENT LOCAL;


---子系统
CREATE USER DOTNETDEMO  PROFILE "DEFAULT" IDENTIFIED BY 
    DOTNETDEMO DEFAULT 
    TABLESPACE DOTNETDEMO TEMPORARY 
    TABLESPACE "TEMP" ACCOUNT UNLOCK;

GRANT UNLIMITED TABLESPACE TO DOTNETDEMO;
GRANT "CONNECT"    TO DOTNETDEMO;
GRANT "RESOURCE"   TO DOTNETDEMO;
GRANT CREATE VIEW  TO DOTNETDEMO;
GRANT"DBA" TO "DOTNETDEMO" WITH ADMIN OPTION;

GRANT SELECT ON "SYS"."V_$SESSION" TO DOTNETDEMO;
GRANT SELECT ON "SYS"."V_$SESSTAT" TO DOTNETDEMO;
GRANT SELECT ON "SYS"."V_$STATNAME" TO DOTNETDEMO;

--D:\app\Administrator\oradata\orcl
--D:\app\Administrator\oradata\tlh
