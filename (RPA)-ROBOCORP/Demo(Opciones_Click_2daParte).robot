
***Settings***

Documentation     Opciones para Clicks con el texto del botón derecho y doble click
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Navegador
    Open Available Browser  https://demoqa.com/buttons
    Maximize Browser Window 

    
#Click izquierdo
    Click Element If Visible    (//button[@type='button'][contains(.,'Click Me')])[3]
#Botón Derecho
    Open Context Menu      //BUTTON[@id='rightClickBtn']   
 #Doble Click
    Double Click Element    //button[@id='doubleClickBtn']


    Sleep    5s
    Close All Browsers