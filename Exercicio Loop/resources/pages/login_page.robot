*** Settings ***
Resource    ../main.robot


*** Variables ***
&{login}
...    input_username=//input[@name="username"]
...    input_password=//input[@name="password"]
...    button_login=//button[@type="submit"]


*** Keywords ***
Dado que eu acesse o site e faça login
    Open Browser                     ${geral.URL}               ${geral.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${login.input_username}    10
    Input Text                       ${login.input_username}    ${dados_login.username}
    Wait Until Element Is Visible    ${login.input_password}    10
    Input Text                       ${login.input_password}    ${dados_login.password}
    Click Button                     ${login.button_login}