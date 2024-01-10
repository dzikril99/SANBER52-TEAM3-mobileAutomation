*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookPage.robot
Variables        ../pageObjects/bookPageObject/book_locators.yaml

Test Setup       Run Keywords    
...              Open Flight Application

*** Test Cases ***
# Book Flight Test Succes
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Login With Valid Credentials               
#     Click Sign In Button On Login Page
#     Click book Button On Home Page
#     Select Tab One Way
#     Select From City
#     Select To City
#     Select Class
#     Set Start Date
#     Set End Date
#     Select Flight Type
#     Toggle One Day Checkbox
#     Click Book Button
#     Click Price
#     Verify Success Book

# Failed Book Flight with Blank Date
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Login With Valid Credentials               
#     Click Sign In Button On Login Page
#     Click book Button On Home Page
#     Select Tab One Way
#     Select From City
#     Select To City
#     Select Class
#     # Set Start Date
#     # Set End Date
#     Select Flight Type
#     Toggle One Day Checkbox
#     Click Book Button
#     Click Price
#     Verify Success Book

Failed Book Flight with uncheck Flight Type
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Login With Valid Credentials               
    Click Sign In Button On Login Page
    Click book Button On Home Page
    Select Tab One Way
    Select From City
    Select To City
    Select Class
    Set Start Date
    Set End Date
    #Select Flight Type
    Toggle One Day Checkbox
    Click Book Button
    Click Price
    Verify Success Book

# Failed Book with default data
#     Verify Home Page Appears
#     Click Sign In Button On Home Page
#     Verify Login Appears
#     Login With Valid Credentials               
#     Click Sign In Button On Login Page
#     Click book Button On Home Page
#     # Select Tab One Way
#     # Select From City
#     # Select To City
#     # Select Class
#     # Set Start Date
#     # Set End Date
#     # #Select Flight Type
#     # Toggle One Day Checkbox
#     Click Book Button
#     Click Price
#     Verify Success Book
