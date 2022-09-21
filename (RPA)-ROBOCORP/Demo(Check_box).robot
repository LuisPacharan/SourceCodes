
***Settings***

Documentation     Seleccion de CheckBox en la web
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Navegador
    Open Available Browser  https://testingqarvn.com.es/prueba-de-campos-checkbox/
    Maximize Browser Window 
    Sleep    1s
    Input Text When Element Is Visible    //input[contains(@id,'wsf-1-field-29')]    Rodrigo
    Sleep    .5s
    Input Text When Element Is Visible    //input[contains(@id,'wsf-1-field-30')]    Villanueva
    Sleep    .5s
    Input Text When Element Is Visible    //input[contains(@id,'wsf-1-field-31')]    Vrodrigo@gmail.com
    Sleep    .5s
    Input Text When Element Is Visible    //input[contains(@id,'wsf-1-field-32')]    5556554636
    Sleep    .5s
    Input Text When Element Is Visible    //textarea[contains(@id,'wsf-1-field-33')]   Direccionuno 
    Sleep    .5s

    #Aquí se elige la opcion del checkbox

    #Checkbox Should Be Selected      //label[contains(.,'PHP')] 

    Click Element If Visible    //label[contains(.,'PHP')] 
    Sleep    1s
    Click Element If Visible    //label[contains(.,'JS')] 
    Sleep    3s

    #Click Element    //BUTTON[@id='wsf-1-field-27']
    #Sleep    4s
    Close All Browsers