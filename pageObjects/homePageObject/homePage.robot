*** Settings ***
Resource                ../base/base.robot
Variables               homepage_locators.yaml

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible      ${Logo_homePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible      ${signIn_button_homePage}
    Click Element                      ${signIn_button_homePage}

Verify User Is Logged In
    Wait Until Element Is Visible      ${userName_text_homePage}

Click book Button On Home Page
     Wait Until Element Is Visible      ${signIn_button_homePage}
     Click Element                      ${book_button_homePage}

Click Search Button on Home page
    Wait Until Element Is Visible       ${signIn_button_homePage}
    Click Element                       ${search_button_homePage}