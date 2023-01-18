---*** Creacion de un Trigger ***---

Create table Countries
	(
	NameCountry Varchar(50)
	)
Go 
Insert into Countries
   Values ('Mexico')
Go
Create table Log_MovimientosDeEliminacion
	(
	RegMovim int identity(1,1) primary key,
	FechaMovim datetime,
	Descript varchar(100),
	Usuario varchar(100)
	)

--Select * from Log_MovimientosDeEliminacion
--Select * from Countries

Create Trigger Tgr_InsertaRegistro
	on Countries for Delete
	as
	Begin
	Insert into Log_MovimientosDeEliminacion(FechaMovim,Descript,Usuario)
	Values (CONVERT(varchar,GETDATE(),20) , 'Se eliminó un registro ',current_user)
	End
Go
/*Realizando la prueba*/
	Delete from Countries where NameCountry = 'Mexico'

/*
Select * from Log_MovimientosDeEliminacion

 -----------------------------------------------------------------
 |RegMovim|		FechaMovim		  |	   Descript			  |Usuario|
 ----------------------------------------
 
 -------------------------
 |   1    |2022-12-13 16:31:12.000|Se eliminó un registro |  dbo  |
 -----------------------------------------------------------------
  */
