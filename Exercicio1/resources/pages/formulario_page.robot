*** Settings ***
Resource    ../main.robot


*** Variables ***
&{formulario}
...    input_Name=//input[@id="name"]
...    input_phone=//input[@id="phone"]
...    input_email=//input[@id="email"]
...    input_password=//input[@id="password"]
...    input_address=//textarea[@id="address"]
...    button_submit=//button[@name="submit"]


*** Keywords ***
E insira os dados
    Wait Until Element Is Visible    ${formulario.input_Name}        10
    Input Text                       ${formulario.input_Name}        ${dados_formulario.Nome}
    Wait Until Element Is Visible    ${formulario.input_phone}       10
    Input Text                       ${formulario.input_phone}       ${dados_formulario.Telefone}
    Wait Until Element Is Visible    ${formulario.input_email}       10
    Input Text                       ${formulario.input_email}       ${dados_formulario.Email}
    Wait Until Element Is Visible    ${formulario.input_password}    10
    Input Password                   ${formulario.input_password}    ${dados_formulario.Senha}
    Wait Until Element Is Visible    ${formulario.input_address}     10
    Input Password                   ${formulario.input_address}     ${dados_formulario.Endereco}
    Wait Until Element Is Visible    ${formulario.button_submit}     10
    Click Button                     ${formulario.button_submit}