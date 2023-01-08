*** Settings ***
Resource    ../main.robot
Library    FakerLibrary


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
    Wait Until Element Is Visible    ${pim.button_pim}                       10s
    Click Element                    ${pim.button_pim}
    Wait Until Element Is Visible    ${pim.button_add}                       20s
    Click Element                    ${pim.button_add}
    Wait Until Element Is Visible    ${pim.input_firstName}                  20s
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
        Wait Until Element Is Visible    ${pim.input_firstName}
        ${primeiro_nome}                 FakerLibrary.FirstName
        ${segundo_nome}                  FakerLibrary.LastName
        ${sobrenome}                     FakerLibrary.LastName
        Input Text                       ${pim.input_firstName}                  ${primeiro_nome}
        Input Text                       ${pim.input_middleName}                 ${segundo_nome}
        Input Text                       ${pim.input_lastName}                   ${sobrenome}
        Click Element                    ${pim.button_save}
        Dado que eu acesse a opção PIM no menu
        E clique em "Add Employee"
    END


E eu adicione um novo usuario aleatorio
    ${nome}                          FakerLibrary.FirstName
    ${nome_meio}                     FakerLibrary.LastNameFemale
    ${sobrenome}                     FakerLibrary.LastNameFemale
    Wait Until Element Is Visible    ${pim.button_pim}                       10
    Click Element                    ${pim.button_pim}
    Wait Until Element Is Visible    ${pim.button_add}                       20
    Click Element                    ${pim.button_add}
    Wait Until Element Is Visible    ${pim.input_firstName}                  20
    Input Text                       ${pim.input_firstName}                  ${nome}
    Input Text                       ${pim.input_middleName}                 ${nome_meio}
    Input Text                       ${pim.input_lastName}                   ${sobrenome}
    Click Element                    ${pim.button_save}