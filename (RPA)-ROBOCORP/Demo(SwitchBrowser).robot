
***Settings***

Documentation     Switcheo entre páginas web
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Primer Navegador
    Open Available Browser  https://testingqarvn.com.es/datos-personales/  alias= Nv1
    #Maximize Browser Window 
    Sleep    1s
Abrir Segundo Navegador
    Open Available Browser  https://demoqa.com/text-box    alias= Nv2
    #Maximize Browser Window 
    Sleep    1s

#Llenando los Formularios

    Switch Browser    Nv1
    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-21']    Pedro
    Sleep    .5s

    Switch Browser    Nv2
    Input Text When Element Is Visible     //input[@id='userName']         Paco 
    Sleep    .5s

    Switch Browser    Nv1
    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-22']    Villanueva
    Sleep    .5s

    Switch Browser    Nv2
    Input Text When Element Is Visible    //input[@id='userEmail']        Paco@gmail.com 
    Sleep    .5s

    Switch Browser    Nv1
    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-23']   Vrodrigo@gmail.com
    Sleep    .5s

    Switch Browser    Nv2
    Input Text When Element Is Visible    //textarea[@id='currentAddress']   Direccion_segunda_web
    Sleep    .5s

    Switch Browser    Nv1
    Input Text When Element Is Visible    //INPUT[@id='wsf-1-field-24']   5556554636
    Sleep    .5s

    Switch Browser    Nv2
    Input Text When Element Is Visible    //textarea[@id='permanentAddress']   Direccion_segunda_web_alternativa
    Sleep    .5s

    Switch Browser    Nv1
    Input Text When Element Is Visible    //TEXTAREA[@id='wsf-1-field-28']   Direccion_primera_web
    Sleep    .5s
   

    #Close All Browsers