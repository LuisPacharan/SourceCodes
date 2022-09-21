
***Settings***

Documentation     Opciones para Clicks con usando coordenadas
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Navegador
    Open Available Browser  https://demoqa.com/buttons
    Maximize Browser Window 

    
#Click Coordenas basados en un primer elemento
    Click Element At Coordinates    (//button[@type='button'][contains(.,'Click Me')])[3]    -160   100


    Sleep    5s
    Close All Browsers