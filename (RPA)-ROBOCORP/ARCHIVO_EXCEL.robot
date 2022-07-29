*** Settings ***
Documentation       ROBOT QUE MULTIPLICA LA COLUMNA A POR 25
Library    RPA.Tables
Library    RPA.Excel.Files

*** Tasks ***
Crea archivo Excel
    Create Workbook  C:/Users/pache/Desktop/Multiplica_25.xlsx
    FOR    ${index}    IN RANGE    20
        &{row}=       Create Dictionary
        ...           VALOR_INICIAL   ${index}
        ...           MONTO_INCREMENTADO   ${index * 25}
        Append Rows to Worksheet  ${row}  header=${TRUE}
    END
    Save Workbook