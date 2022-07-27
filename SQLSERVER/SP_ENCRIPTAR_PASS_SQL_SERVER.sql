--****************ENCRIPTACIÓN DE CONTRASEÑA SQL SERVER****************

/*----------------------------------------- Crear la tabla de usuarios--------------------------------------------*/

CREATE TABLE [dbo].[TBL_USUARIOS](
	[ID_USUARIO] [int] IDENTITY(1,1) NOT NULL,
	[USUARIO] [varchar](50) NULL,
	[CONTRASENA] [varbinary](128) NULL,
 CONSTRAINT [PK_TBL_USUARIOS] PRIMARY KEY CLUSTERED 
(

/*--------------------------------------- Crear SP que cifre la contraseña ------------------------------------------*/

CREATE procedure [dbo].[sp_IngresarUsuarioNuevo]
@name varchar(50),
@pass varchar(50)
as
begin
--'password' es la clave secreta
set nocount on
declare @passencoder as  VARBINARY(8000)
set @passencoder=ENCRYPTBYPASSPHRASE ('password',@pass);
insert into TBL_USUARIOS(USUARIO,CONTRASENA)
values (@name, ENCRYPTBYPASSPHRASE ('password',@pass))
 
end


/*------------------------------- Executar el SP, colocando los argumentos @name, @pass ---------------------------------*/

exec sp_IngresarUsuarioNuevo 'Usuario1','pass_123'
exec sp_IngresarUsuarioNuevo 'Usuario2','clave_234'

/*-------------------------------- Revisar el resultado de la execución en la tabla --------------------------------------*/

SELECT * FROM [TBL_USUARIOS]

/*---------------------------------------- Revisar la clave DESENCRIPTADA ------------------------------------------------*/

SELECT USUARIO, CONVERT(VARCHAR(50),
DECRYPTBYPASSPHRASE('password',CONTRASENA))
FROM dbo.[TBL_USUARIOS]