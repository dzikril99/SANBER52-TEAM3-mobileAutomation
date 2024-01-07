*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookPage.robot
Variables        ../pageObjects/bookPageObject/book_locators.yaml

Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials

*** Test Cases ***
Book Flight Test Succes
    Click book Button On Home Page
    Select Tab One Way
    Select From City
    Select To City
    Select Class
    Set Start Date
    Set End Date
    Select Flight Type
    Toggle One Day Checkbox
    Click Book Button
    Click Price
    Verify Success Book

Failed Book Flight with Blank Date
    Click book Button On Home Page
    Select Tab One Way
    Select From City
    Select To City
    Select Class
    # Set Start Date
    # Set End Date
    Select Flight Type
    Toggle One Day Checkbox
    Click Book Button
    Click Price
    Verify Success Book

Failed Book Flight with uncheck Flight Type
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

Failed Book with default data
    Click book Button On Home Page
    # Select Tab One Way
    # Select From City
    # Select To City
    # Select Class
    # Set Start Date
    # Set End Date
    # #Select Flight Type
    # Toggle One Day Checkbox
    Click Book Button
    Click Price
    Verify Success Book
