*** Settings ***
Documentation     BOT QUE ABRE ALGUNA APLICACION DE ESCRITORIO
Library           RPA.Windows


*** Keywords ***
Open the Visual Studio 2017
    Windows Search    devenv
    Sleep    5s

*** Tasks ***
Abre Visual Studio 2017 Aplicacion de Escritorio
    Open the Visual Studio 2017