Rem  
Rem
Rem    NAME
Rem      Northwind_Build_Data.sql
Rem
Rem    DESCRIPTION
Rem      .
Rem      .
Rem
Rem    NOTES
Rem      .
Rem
Rem
Rem    REQUIREMENTS
Rem      - Oracle database 10g or better
Rem      - PL/SQL Web Toolkit
Rem
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      cscreen   27/12/2022 - Created
Rem      cscreen   27/12/2022 - Finalized


set termout on;

prompt I.    S E T    C U R R E N T    S C H E M A    T O    N O R T H W I N D

alter session set current_schema = Northwind;



prompt II.    S E T    L A N G U A G E    T O    A M E R I C A N    S O    T H E    D A T E S    C A N    B E    E N T E R E D    C O R R E C T L Y

ALTER SESSION SET NLS_LANGUAGE = 'AMERICAN';

prompt III.    I N S T A L L   T A B L E S   A N D   C O N S T R A I N T S

@DataInserts/Northwind_Oracle_Ver.sql

/
show errors


prompt S C R I P T    C O M P L E T E ! !