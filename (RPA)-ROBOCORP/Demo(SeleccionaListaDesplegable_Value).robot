
***Settings***

Documentation     Trabajando con Selectores por Value
Library    RPA.Browser
Library    RPA.Windows

***Variables***

#Declaración de Variables Globales: 

${url1}=         https://testingqarvn.com.es/combobox/
${url2}=        https://demoqa.com/select-menu
${nombre}=      Pedro
${appellido}=   Villanueva
${email}=       Vrodrigo@gmail.com

*** Tasks ***
Abrir Primer Navegador
    Open Available Browser  ${url1}
    Maximize Browser Window
    Sleep    2s

    #Aqui se elige por Value
    Execute Javascript            window.scrollTo(0,900)
    Sleep    3s
    Select From List By Value    //select[contains(@id,'wsf-1-field-53')]        Mac

    Sleep    4s
    Close All Browsers          