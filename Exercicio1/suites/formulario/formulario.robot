*** Settings ***
Resource         ../../resources/main.robot
Test Setup       Acessar o site
Test Teardown    Fechar navegador


*** Test Cases ***
TC01 - Preenchendo o formulario
    E insira os dados
