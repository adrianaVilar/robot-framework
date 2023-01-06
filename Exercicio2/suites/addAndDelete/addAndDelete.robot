*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Acessar site orange e fazer login
Test Teardown    Fechar navegador


*** Test Cases ***
TC01 - Acessar site, fazer login, criar usuario e deletar
    E eu adicione um novo usuario
    E eu pesquise e delete o usuario criado