*** Settings ***
Documentation       ROBOT QUE HACE UN LOGIN
Library             RPA.Browser.Selenium      auto_close=${False}

*** Keywords ***
Open intranet robocorp
    Open Available Browser  https://www.linkedin.com/
Log in
<<<<<<< HEAD
=======
    Input Text        session_key    correo_electronico@gmail.com
    Input Password    session_password    tu_contraseña
>>>>>>> 3d63b453e610e730c6603941b469161687ffd9dc
    Submit Form

*** Tasks ***
Open Browser And Log In
    Open intranet robocorp
    Log in



<<<<<<< HEAD
    #https://robocorp.com/docs/
=======
    #https://robocorp.com/docs/
>>>>>>> 3d63b453e610e730c6603941b469161687ffd9dc
