*** Settings ***
Resource    ../main.robot


*** Variables ***
&{list}
...    employee_list=//a[contains(text(), "Employee List")]
...    employee_name=(//input[@placeholder="Type for hints..."])[1]
...    button_search=//button[@type="submit"]
...    button_delete=//i[@class="oxd-icon bi-trash"]
...    button_confirm_delete=//button[@class="oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin"]
...    no_records_found=//span[@class="oxd-text oxd-text--span"]


*** Keywords ***
E eu pesquise e delete o usuario criado
    Wait Until Element Is Visible    ${list.employee_list}            10
    Click Element                    ${list.employee_list}
    Wait Until Element Is Visible    ${list.employee_name}            10
    Input Text                       ${list.employee_name}            ${new_user.first_name}
    Wait Until Element Is Visible    ${list.button_search}            10
    Click Element                    ${list.button_search}
    Wait Until Element Is Visible    ${list.button_delete}            10
    Click Element                    ${list.button_delete}
    Wait Until Element Is Visible    ${list.button_confirm_delete}    10
    Click Element                    ${list.button_confirm_delete}
    Wait Until Element Is Visible    ${list.no_records_found}         10
    Element Should Be Visible        ${list.no_records_found}