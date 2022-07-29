*** Settings ***
Documentation       ROBOT QUE HACE UN LOGIN
Library             RPA.Browser.Selenium      auto_close=${False}

*** Keywords ***
Open intranet robocorp
    Open Available Browser  https://www.linkedin.com/
Log in
    Input Text        session_key    correo_electronico@gmail.com
    Input Password    session_password    tu_contraseña
    Submit Form

*** Tasks ***
Open Browser And Log In
    Open intranet robocorp
    Log in



    #https://robocorp.com/docs/
