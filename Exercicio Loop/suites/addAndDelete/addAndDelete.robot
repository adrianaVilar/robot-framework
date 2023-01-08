*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Acessar site orange e fazer login
Test Teardown    Fechar navegador


*** Test Cases ***
TC01 - Acessar site, fazer login, criar usuario e deletar
    [Tags]    TC01 Login Create Delete
    E eu adicione um novo usuario
    E eu pesquise e delete o usuario criado

TC02 - Acessar site, fazer login, criar 3 usuários
    [Tags]    TC02 Loop
    Dado que eu acesse a opção PIM no menu
    E clique em "Add Employee"
    Então adiciono 3 novos usuários