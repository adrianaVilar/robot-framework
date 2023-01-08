*** Settings ***
Resource    ../main.robot


*** Variables ***
&{pim}
...    button_pim=//a[@href="/web/index.php/pim/viewPimModule"]
...    button_add=//button[@class="oxd-button oxd-button--medium oxd-button--secondary"]
...    input_firstName=//input[@name="firstName"]
...    input_middleName=//input[@name="middleName"]
...    input_lastName=//input[@name="lastName"]
...    input_photo=//button[@class="oxd-icon-button employee-image-action"]
...    button_save=//button[@type="submit"]
...    title_registred_employee=//a[contains(text(), "Personal Details")]


*** Keywords ***
E eu adicione um novo usuario
    Wait Until Element Is Visible    ${pim.button_pim}                       10
    Click Element                    ${pim.button_pim}
    Wait Until Element Is Visible    ${pim.button_add}                       20
    Click Element                    ${pim.button_add}
    Wait Until Element Is Visible    ${pim.input_firstName}                  20
    Input Text                       ${pim.input_firstName}                  ${new_user.first_name}
    Input Text                       ${pim.input_middleName}                 ${new_user.middle_name}
    Input Text                       ${pim.input_lastName}                   ${new_user.last_name}
    Click Element                    ${pim.button_save}


Dado que eu acesse a opção PIM no menu
    Wait Until Element Is Visible    ${pim.button_pim}          10
    Click Element                    ${pim.button_pim}


E clique em "Add Employee"
    Wait Until Element Is Visible    ${pim.button_add}          20
    Click Element                    ${pim.button_add}


Então adiciono ${quantidade} novos usuários
    FOR    ${i}    IN RANGE    ${quantidade}
        Wait Until Element Is Visible    ${pim.input_firstName}                  20
        Input Text                       ${pim.input_firstName}                  ${new_user.first_name}    ${i}
        Input Text                       ${pim.input_middleName}                 ${new_user.middle_name}
        Input Text                       ${pim.input_lastName}                   ${new_user.last_name}
        Click Element                    ${pim.button_save}
        Dado que eu acesse a opção PIM no menu
        E clique em "Add Employee"
    END