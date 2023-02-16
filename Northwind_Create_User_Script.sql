Rem    NAME
Rem      Northwind_Create_User_Script.sql
Rem
Rem    DESCRIPTION
Rem      This script provides the logic to create a user, grant the appropriate
Rem	     privileges and tablespace areas for this tutorial to run under.
Rem      .
Rem
Rem    NOTES
Rem      .
Rem
Rem    REQUIREMENTS
Rem      - Oracle database 10g or better
Rem      - PL/SQL Web Toolkit
Rem
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      cscreen   27/12/2022 - Created
Rem      cscreen   27/12/2022 - Finalized

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLESPACE NORTHWIND INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS';
EXCEPTION
	  WHEN OTHERS THEN
			IF SQLCODE != -959 THEN
				RAISE;
			END IF;
END;

/

CREATE TABLESPACE northwind DATAFILE 'northwind.dbf' SIZE 100m;

COMMIT;

CREATE USER Northwind IDENTIFIED BY root;

ALTER USER Northwind DEFAULT TABLESPACE northwind TEMPORARY TABLESPACE TEMP QUOTA UNLIMITED ON northwind;

GRANT CREATE SESSION TO Northwind;
GRANT CONNECT TO Northwind;
GRANT RESOURCE TO Northwind;

COMMIT;





/
show errors


prompt S C R I P T    C O M P L E T E ! !