*** Settings ***
Documentation       ROBOT QUE DESCARGA UN ARCHIVO DE EXCEL DE UN NAVEGADOR

Library             RPA.Excel.Files
Library             RPA.HTTP


*** Variables ***
${EXCEL_FILE_URL}=      https://github.com/robocorp/example-web-store-order-processor/raw/main/devdata/Data.xlsx


*** Tasks ***
Descarga un archivo de excel
    Download    ${EXCEL_FILE_URL}    overwrite=True
    Open Workbook  Data.xlsx  #con el mismo nombre
    ${table}=    Read Worksheet As Table    header=True
    Close Workbook

    FOR    ${row}    IN    @{table}
        Log    ${row}
    END