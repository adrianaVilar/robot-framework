*** Settings ***
Resource    ../main.robot


*** Variables ***
&{pim}
...    button_pim=//a[@href="/web/index.php/pim/viewPimModule"]
...    button_add=//button[@class="oxd-button oxd-button--medium oxd-button--secondary"]
...    input_firstName=//input[@name="firstName"]
...    input_middleName=//input[@name="middleName"]
...    input_lastName=//input[@name="lastName"]
...    button_save=//button[@type="submit"]


*** Keywords ***
E eu adicione um novo usuario
    Wait Until Element Is Visible    ${pim.button_pim}          10
    Click Element                    ${pim.button_pim}
    Wait Until Element Is Visible    ${pim.button_add}          20
    Click Element                    ${pim.button_add}
    Wait Until Element Is Visible    ${pim.input_firstName}     20
    Input Text                       ${pim.input_firstName}     ${new_user.first_name}
    Wait Until Element Is Visible    ${pim.input_middleName}    20
    Input Text                       ${pim.input_middleName}    ${new_user.middle_name}
    Wait Until Element Is Visible    ${pim.input_lastName}      20
    Input Text                       ${pim.input_lastName}      ${new_user.last_name}
    Wait Until Element Is Visible    ${pim.button_save}         10
    Click Element                    ${pim.button_save}