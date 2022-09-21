
***Settings***

Documentation     Arastrar un objeto de un lugar a otro
Library    RPA.Browser
Library    RPA.Windows

*** Tasks ***
Abrir Navegador
    Open Available Browser  https://demoqa.com/droppable
    Maximize Browser Window 

# Arrastrar objeto desde una localización a otra
    Drag And Drop    //div[@id='draggable']    (//div[contains(@id,'droppable')])[3]

    Sleep    3s
# Arrastrar objeto desde una localización hacia una coordenada

Abrir Navegador2
    Open Available Browser  https://demoqa.com/droppable
    Maximize Browser Window 

    Drag And Drop By Offset    //div[@id='draggable']    180    90

    Sleep    5s
    Close All Browsers