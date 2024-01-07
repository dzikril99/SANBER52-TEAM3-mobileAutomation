*** Settings ***
Resource                ../base/base.robot
Resource    ../homePageObject/homePage.robot
Variables               book_locators.yaml

*** Variables ***


*** Keywords ***

Verify dropdown menu appears
    Wait Until Element Is Visible    ${OneWay_choose}
    Wait Until Element Is Visible    ${from_city_dropdown}
    Wait Until Element Is Visible    ${to_city_dropdown}
    Wait Until Element Is Visible    ${class_dropdown}
    Wait Until Element Is Visible    ${start_date}
    Wait Until Element Is Visible    ${end_date}
    Wait Until Element Is Visible    ${ListView}
Select Tab One Way
  Wait Until Element Is Visible    ${OneWay_choose} 
  Click Element    ${OneWay_choose} 

Select From City
    Click Element    ${from_city_dropdown}
    Wait Until Element Is Visible    ${ListView}
    Click Element    ${New_York}

Select To City
   Wait Until Element Is Visible    ${to_city_dropdown}
   Click Element    ${to_city_dropdown}
   Wait Until Element Is Visible    ${ListView}
   Click Element    ${London}

Select Class
    Click Element    ${class_dropdown}
    Wait Until Element Is Visible    ${ListView}
    Click Element    ${First}

Set Start Date
    Wait Until Element Is Visible    ${start_date}
    Click Element    ${start_date}
    Wait Until Element Is Visible    ${01August}
    Click Element    ${01August}
    Click Element    ${Ok_button}

Set End Date
    Wait Until Element Is Visible    ${end_date}
    Click Element    ${end_date}
    Wait Until Element Is Visible    ${02August}
    Click Element    ${02August}
    Click Element    ${Ok_button}

Select Flight Type
    Click Element    ${flight_radio_button}

Toggle One Day Checkbox
    Click Element    ${day_checkbox}

Click Confirm Button
    Wait Until Element Is Visible    ${button_confirm}
    Click Element    ${button_confirm}
Click Book Button
    Wait Until Element Is Visible    ${book_button}
    Click Element    ${book_button}

Click Price
    Wait Until Element Is Visible    ${Price1}
    Click Element    ${Price1}
    Click Confirm Button

Verify Success Book
    Element Should Contain Text    ${TextView}    Your flight is booked