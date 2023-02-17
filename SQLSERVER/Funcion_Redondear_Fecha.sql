CREATE FUNCTION FN_REDONDEAR_FECHA
(
--Parámetro Fecha que se va a redondear
@FechaEntrada DATE
)
RETURNS DATE
AS
BEGIN
	DECLARE @Fecharedondeada DATE
	SELECT  @Fecharedondeada = CONVERT(DATE, CONVERT(VARCHAR(8),@FechaEntrada,112))
	RETURN  @Fecharedondeada
END