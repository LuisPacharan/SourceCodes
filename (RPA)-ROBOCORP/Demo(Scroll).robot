
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
    Click Element If Visible    //label[contains(.,'PHP')] 
    Sleep    1s

    #Aqui se coloca un Scroll para que muestre el checkBox más abajo de la página antes de elegir la opcion JS
    Scroll Element Into View    //label[contains(.,'JS')] 
     Sleep    1s

    Click Element If Visible    //label[contains(.,'JS')] 
    Sleep    1s

     #Aqui se coloca un Scroll con JavaScript para que muestre información más abajo en la página.

     Execute Javascript    window.scrollTo(0,1000)  #Abajo
     Sleep    2s
     Execute Javascript    window.scrollTo(0,50)    #Arriba
     Sleep    3s

    Close All Browsers