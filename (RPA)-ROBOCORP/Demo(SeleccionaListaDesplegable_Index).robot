
***Settings***

Documentation     Trabajando con Selectores
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

    #Aqui se elige el indice 0 ,1 o 2.
    Execute Javascript            window.scrollTo(0,900)
    Sleep    3s
    Select From List By Index    //select[contains(@id,'wsf-1-field-53')]        0

    Sleep    4s
    Close All Browsers