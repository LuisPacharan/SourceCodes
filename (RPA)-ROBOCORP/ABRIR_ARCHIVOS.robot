*** Settings ***
Documentation           ROBOT QUE ABRE UN ARCHIVO DE WORD, ESCRIBE UN TEXTO Y GUARDA LOS CAMBIOS EN OTRO ARCHIVO
Library                 RPA.Word.Application
Task Setup              Open Application

*** Tasks ***
Open existing file
    Open File          C:/Users/pc/Desktop/archivo_word.docx
    Write Text         Hola, ésta es una prueba de Escritura Automática
    Save Document AS   C:/Users/pc/Desktop/archivo_word_new.docx
    ${texts}=           Get all Texts
    Close Document
