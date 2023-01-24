
--Creacion de base para cifras control --

CREATE TABLE TBL_CIFRAS_CONTROL
	(
	ID_BASE			int IDENTITY(1,1) PRIMARY KEY,
	NOMBRE_TABLA    varchar(100) NULL,
	Dia01 varchar(50) NULL , Dia02 varchar(50) NULL , Dia03 varchar(50) NULL , Dia04 varchar(50) NULL ,
	Dia05 varchar(50) NULL , Dia06 varchar(50) NULL , Dia07 varchar(50) NULL , Dia08 varchar(50) NULL ,
	Dia09 varchar(50) NULL , Dia10 varchar(50) NULL , Dia11 varchar(50) NULL , Dia12 varchar(50) NULL ,
	Dia13 varchar(50) NULL , Dia14 varchar(50) NULL , Dia15 varchar(50) NULL , Dia16 varchar(50) NULL ,
	Dia17 varchar(50) NULL , Dia18 varchar(50) NULL , Dia19 varchar(50) NULL , Dia20 varchar(50) NULL ,
	Dia21 varchar(50) NULL , Dia22 varchar(50) NULL , Dia23 varchar(50) NULL , Dia24 varchar(50) NULL ,
	Dia25 varchar(50) NULL , Dia26 varchar(50) NULL , Dia27 varchar(50) NULL , Dia28 varchar(50) NULL , 
	Dia29 varchar(50) NULL , Dia30 varchar(50) NULL , Dia31 varchar(50) NULL
	);


GO

SELECT * FROM TBL_CIFRAS_CONTROL

GO

INSERT INTO TBL_CIFRAS_CONTROL (NOMBRE_TABLA) VALUES('TBL_TABLA_1')
INSERT INTO TBL_CIFRAS_CONTROL (NOMBRE_TABLA) VALUES('TBL_TABLA_2')
INSERT INTO TBL_CIFRAS_CONTROL (NOMBRE_TABLA) VALUES('TBL_TABLA_3')

GO

----------------------------------- (1) TBL_TABLA_1 -----------------------------------
DECLARE @day VARCHAR(50),@cifra VARCHAR(50),@ACTUALIZACIFRA NVARCHAR(2000)
SET @day = RIGHT('0' + RTRIM(datepart(dd,getdate())),2)
SET @cifra = (select count(*) from TBL_TABLA_1)
SET @ACTUALIZACIFRA =
'
update TBL_CIFRAS_CONTROL
set Dia'+(@day)+' ='+@cifra+'
from TBL_CIFRAS_CONTROL
where id_base = 1
'
EXEC SP_EXECUTESQL @ACTUALIZACIFRA

GO

----------------------------------- (2) TBL_TABLA_2 -----------------------------------
DECLARE @day VARCHAR(50),@cifra VARCHAR(50),@ACTUALIZACIFRA NVARCHAR(2000)
SET @day = RIGHT('0' + RTRIM(datepart(dd,getdate())),2)
SET @cifra = (select count(*) from TBL_TABLA_2)
SET @ACTUALIZACIFRA =
'
update TBL_CIFRAS_CONTROL
set Dia'+(@day)+' ='+@cifra+'
from TBL_CIFRAS_CONTROL
where id_base = 2
'
EXEC SP_EXECUTESQL @ACTUALIZACIFRA

GO

----------------------------------- (3) TBL_TABLA_3 -----------------------------------
DECLARE @day VARCHAR(50),@cifra VARCHAR(50),@ACTUALIZACIFRA NVARCHAR(2000)
SET @day = RIGHT('0' + RTRIM(datepart(dd,getdate())),2)
SET @cifra = (select count(*) from TBL_TABLA_3)
SET @ACTUALIZACIFRA =
'
update TBL_CIFRAS_CONTROL
set Dia'+(@day)+' ='+@cifra+'
from TBL_CIFRAS_CONTROL
where id_base = 3
'
EXEC SP_EXECUTESQL @ACTUALIZACIFRA

GO