*** Settings ***
Documentation    Testing the vaccine web application
Library          SeleniumLibrary

*** Variables ***
${SITE_URL}        https://vaccine-haven.herokuapp.com/
${BROWSER}         Firefox
${CITIZEN_ID}      9621054594757
${SITE_NAME}       OGYHSite
${VACCINE_NAME}    Astra

*** Keywords ***
Open Application
    Open Browser               ${SITE_URL}    ${BROWSER}
    Set Selenium Speed         0.5 seconds
    Maximize Browser Window


Input Reservation Form
    Input Text                   name=citizen_id      ${CITIZEN_ID}
    Select From List By Value    name:site_name       ${SITE_NAME}
    Select From List By Value    name:vaccine_name    ${VACCINE_NAME}

Input Citizen id
    Page Should Contain    Citizen Page
    Input Text             name=citizen_id    ${CITIZEN_ID}
    Click Button           Submit


*** Test Cases ***
Test Navigate to Home Page
    Open Application
    Location Should Be     ${SITE_URL}
    Title Should Be        Vaccine Haven
    Page Should Contain    Registration
    Page Should Contain    Reservation
    [Teardown]             Close Browser

Test Create Reservation
    Open Application
    Click Button                         Reserve Vaccine
    Location Should Be                   ${SITE_URL}reservation
    Page Should Contain                  Vaccine Reservation
    Input Reservation Form               
    Click Element                        id:reserve__btn
    Wait Until Element Is Not Visible    id:reserve__btn
    Click Element                        id:nav__info__link
    Input Citizen id
    Page Should Contain                  ${CITIZEN_ID}
    [Teardown]                           Close Browser


Test Cancel Reservation
    Open Application
    Click Element                       id:nav__info__link
    Input Citizen id
    Wait Until Page Contains Element    id:cancel__btn
    Click Element                       id:cancel__btn
    Location Should Be                  ${SITE_URL}info
    [Teardown]                          Close Browser
