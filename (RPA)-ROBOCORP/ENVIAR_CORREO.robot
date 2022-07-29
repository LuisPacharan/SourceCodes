*** Settings ***
Library                 RPA.Outlook.Application
Task Setup              Open Application

*** Variables ***
${RECIPIENT}            pacheco.arana.luis@Outlook.es

*** Tasks ***
Send message
    Send Message       recipients=${RECIPIENT}
    ...                subject= USANDO ROBOCORP - ENVIO DE EMAIL
    ...                body=ENVIO DE CORREO AUTOMATICO CON UN BOT , HOLA!!!
    #...                attachments= SalesData.xlsx