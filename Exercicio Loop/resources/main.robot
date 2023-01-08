*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary


### Data ###
Resource    ../resources/data/geral.robot
Resource    ../resources/data/login.robot
Resource    ../resources/data/new_user.robot


### Shared ###
Resource    ../resources/shared/setup_teardown.robot


### Pages ###
Resource    ../resources/pages/login_page.robot
Resource    ../resources/pages/pim_page.robot
Resource    ../resources/pages/employee_list.robot