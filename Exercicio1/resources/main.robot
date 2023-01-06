*** Settings ***
Library    SeleniumLibrary


### Data ###
Resource    ../resources/data/geral.robot
Resource    ../resources/data/formulario.robot


### Shared ###
Resource    ../resources/shared/setup_teardown.robot


### Pages ###
Resource    ../resources/pages/acessar_page.robot
Resource    ../resources/pages/formulario_page.robot