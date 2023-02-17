--*** FUNCION QUE CALCULA LA EDAD A PARTIR DE UNA FECHA DE NACIMIENTO ***--
CREATE FUNCTION FN_CALCULO_EDAD
(
--Parámetro Fecha para calcular Edad
@FechaEntrada DATE
)
RETURNS INT
AS
BEGIN
	DECLARE @Edad INT
	SELECT  @Edad = ((((12* year(getdate()))-(12*(year(@FechaEntrada))))+ (month(getdate())-month(@FechaEntrada)))/12)
	RETURN  @Edad
END

-- VALIDANDO --
--SELECT DBO.FN_CALCULO_EDAD(FECHA) FROM TBL_TABLA