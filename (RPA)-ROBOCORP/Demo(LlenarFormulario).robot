
***Settings***

Documentation     Practicas_curso #Llenar un formulario web
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Navegador
    Log                     "Llenando un formulario web"
    Open Available Browser  https://testingqarvn.com.es/datos-personales/
    Maximize Browser Window 
    Sleep    3s
    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-21']    Rodrigo
    Sleep    .5s
    Input Text    //INPUT[@id='wsf-1-field-22']    Villanueva
    Sleep    .5s
    Input Text    //INPUT[@id='wsf-1-field-23']    Vrodrigo@gmail.com
    Sleep    .5s
    Input Text    //INPUT[@id='wsf-1-field-24']   5556554636
    Sleep    .5s
    Input Text    //TEXTAREA[@id='wsf-1-field-28']   Direccionuno
    Sleep    .5s
    Click Element    //BUTTON[@id='wsf-1-field-27']
    Sleep    4s
    Close All Browsers
    