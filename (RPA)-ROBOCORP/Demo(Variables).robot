
***Settings***

Documentation     Variables
Library    RPA.Browser
Library    RPA.Windows

***Variables***

#Declaración de Variables Globales: 

${url}=         https://testingqarvn.com.es/datos-personales/ 
${nombre}=      Pedro
${appellido}=   Villanueva
${email}=       Vrodrigo@gmail.com

*** Tasks ***
Abrir Primer Navegador
    Open Available Browser  ${url}
    Maximize Browser Window

    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-21']    ${nombre}
    Sleep    1s

    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-22']    ${appellido}
    Sleep    1s

    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-23']     ${email}
    Sleep    1s

#Declaración de Variables Locales: 

    ${direccion}=  Set variable     Direccion_primera_web
    ${telefono}=   Set Variable     5556554636

    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-24']     ${telefono}
    Sleep    1s

    Input Text When Element Is Visible    //TEXTAREA[@id='wsf-1-field-28']  ${direccion}
    Sleep    1s
   

    Close All Browsers