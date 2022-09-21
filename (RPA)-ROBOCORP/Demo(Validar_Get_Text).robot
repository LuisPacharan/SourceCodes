
***Settings***

Documentation     Practicas_curso #Llenar un formulario web
Library    RPA.Browser
Library    RPA.Windows
Library    RPA.FileSystem
Library    OperatingSystem

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

#Validar texto  Creando una variable
${nombre} =      RPA.Browser.Get Text    //p[contains(.,'Gracias por tu encuesta.')]   
#Log ${nombre} 
IF "${nombre}" == "Gracias por tu enc"
    Log     "La prueba fue exitosa"
ELSE
    Log     "La prueba NO paso"
END
    
    Close All Browsers
    