
***Settings***

Documentation     Opciones para Clicks con el texto del botón
Library    RPA.Browser

*** Tasks ***
Abrir Navegador
    Open Available Browser  https://demoqa.com/buttons
    Maximize Browser Window 
    #opcion 1
    #click button    (//button[@type='button'][contains(.,'Click Me')])[3]
    #opcion 2
    #Click Button When Visible   (//button[@type='button'][contains(.,'Click Me')])[3]
    #opcion 3
    #Click Element    (//button[@type='button'][contains(.,'Click Me')])[3]
    #opcion 4
    #Click Element When Visible    (//button[@type='button'][contains(.,'Click Me')])[3]
    #opcion 5
    Click Element If Visible    (//button[@type='button'][contains(.,'Click Me')])[3]
    Sleep    5s
    Close All Browsers