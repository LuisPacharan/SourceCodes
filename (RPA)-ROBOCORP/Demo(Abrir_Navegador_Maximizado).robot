
***Settings***

Documentation      Abrir Navegador y Maximizar la pantalla
Library    RPA.Browser

*** Tasks ***
Abrir Navegador
    Log                     "Abrir navegador maximizado"
    Open Available Browser  https://testingqarvn.com.es/
    Maximize Browser Window 
    Sleep    5s
    Click Element If Visible   //*[@id="menu-item-314"]/a  #selecciona el elemneto hasta que esté visible
    Sleep    3s
    Close Browser  