# Another_Port_Of_Nortwind_For_Oracle

This is a port of the well known Northwind database to Oracle.

## Instructions for windows.

1. Open CMD and enter the following command:

```cmd

	set NLS_LANG=.AL32UTF8

```
	
This ensures the introduction of regional UTF-8 characters works as intended.

2. Go to the folder where you downloaded the script:

```cmd

	cd /path_to_files
	
```
	
3. Run Sqlplus and use either system schema or something analogue.

4. Run the scripts in order\*:

```SQL

	@Northwind_Create_User_Script.sql;
	
	@Northwind_Build_Data.sql;
	
```

5. In case you need to reinstall the db:

	5.a. Remove the user and its contents:

	```SQL

		DROP USER NORTHWIND CASCADE;

	````
		
	5.b. Repeat step 4 if you're in the same CMD instance, otherwise start from the beginning.	
	
	
\*I set the password for the Northwind user as 'root' but you might want to change it as you desire, just open the script in any text editor, and change 
the word 'root' for the password of your choice.

## Considerations

* First of all, I'd like to thank https://github.com/dshiffletdshifflet as this is a fork of his script.

* The reason that led me to make this fork is that the source of the project missed regional characters,
but on top of that I added other features like an automated schema/user creation, its own tablespace, and 
the instructions to do so.

* Some table names and field names have been changed for the purpose 
of readability, keep that in mind if you're coming from an original instance of the db.
* Inserts are quite slow right now, I'd like to refactor them using BULK INSERT in the furure.

