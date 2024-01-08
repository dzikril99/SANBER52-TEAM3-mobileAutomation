*** Settings ***
Resource                ../base/base.robot
Resource                ../homePageObject/homePage.robot
Variables               searchPage_locator.yaml

*** Variables ***

${VALID_FLIGHT-NUMBER}            DA935
${INVALID_FLIGHT-NUMBER}          804CB

*** Keywords ***

Verify search page appears
    Wait Until Element Is Visible    ${txt_enterNumber}
    Wait Until Element Is Visible    ${numberFlight_input}
    Wait Until Element Is Visible    ${search_button}

Input valid flight number
    [Arguments]    ${VALID_FLIGHT-NUMBER}
    Input Text    ${numberFlight_input}    ${VALID_FLIGHT-NUMBER}

Input invalid flight number
    [Arguments]    ${INVALID_FLIGHT-NUMBER}
    Input Text    ${numberFlight_input}    ${INVALID_FLIGHT-NUMBER}

Click search button
    Click Element    ${search_button}

Verify the booked tickets list page
    Wait Until Element Is Visible    ${listNumber}
