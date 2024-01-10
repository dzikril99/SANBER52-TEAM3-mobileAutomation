*** Settings ***
Resource                ../base/base.robot
Resource                ../homePageObject/homePage.robot
Variables               loginpage_locators.yaml

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_EMAIL}             support@.com
${INVALID_PASSWORD}          abcd123
${BLANK_EMAIL}
${BLANK_PASSWORD}

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_user}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input User Email On Login Page
    [Arguments]   ${email}
    Wait Until Element Is Visible    ${email_input_user}
    Input Text    ${email_input_user}    ${email}

Input User Password On Login Page
    [Arguments]   ${password}
    Input Text    ${password_input_loginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${signIn_button_loginPage}

# Login With Valid Credentials
#     [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Input User Email On Login Page     ${email}
#     Input User Password On Login Page  ${password}
#     Click Sign In Button On Login Page

# Login With Invalid Credentials
#     [Arguments]    ${email}=${InVALID_EMAIL}    ${password}=${VALID_PASSWORD}
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Input User Email On Login Page     ${email}
#     Input User Password On Login Page  ${password}
#     Click Sign In Button On Login Page

# Login With Wrong Password
#     [Arguments]    ${email}=${InVALID_EMAIL}    ${password}=${VALID_PASSWORD}
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Input User Email On Login Page     ${email}
#     Input User Password On Login Page  ${password}
#     Click Sign In Button On Login Page    

Login With Valid Credentials
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}

Login With Invalid Credentials
    [Arguments]    ${email}=${INVALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Input User Email On Login Page     ${email}=${INVALID_EMAIL}
    Input User Password On Login Page  ${password}=${VALID_PASSWORD}

Login With Wrong Password
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${INVALID_PASSWORD}
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}=${INVALID_PASSWORD}  

Login With Blank Credentials
    [Arguments]    ${email}=${BLANK_EMAIL}    ${password}=${VALID_PASSWORD}
    Input User Email On Login Page     ${email}=${BLANK_EMAIL}
    Input User Password On Login Page  ${password}

Login With Blank Password
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${BLANK_PASSWORD}
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}=${BLANK_PASSWORD}

Verify Invalid Input on Login
    Wait Until Page Contains Element     ${error_invalid_inputOnLogin}
