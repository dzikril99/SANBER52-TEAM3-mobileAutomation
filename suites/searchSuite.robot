*** Settings ***
Resource         ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/bookPageObject/bookPage.robot
Resource    ../pageObjects/searchPageObject/searchPage.robot
Variables        ../pageObjects/bookPageObject/book_locators.yaml

Test Setup       Run Keywords    
...              Open Flight Application 
...              Login With Valid Credentials

*** Test Cases ***

Search for Booked Tickets with Valid Number
        # Step 1 : Click button search on home page
    Click Search Button on Home page
        # Step 2 : Verify search page appears
    Verify search page appears
        # Step 3 : Input valid fligt number
    Input valid flight number    $VALID_FLIGHT-NUMBER
        # Step 4 : Click search button
    Click search button
        # Step 5 : Verify the booked tickets list page
    Verify the booked tickets list page

Search for Booked Tickets with Invalid Number
        # Step 1 : Click button search on home page
    Click Search Button on Home page
        # Step 2 : Verify search page appears
    Verify search page appears
        # Step 3 : Input valid fligt number
    Input invalid flight number    $INVALID_FLIGHT-NUMBER
        # Step 4 : Click search button
    Click search button
        # Step 5 : Verify the booked tickets list page
    Verify the booked tickets list page

Search for Booked Tickets with Blank Number
    # Step 1 : Click button search on home page
    Click Search Button on Home page
        # Step 2 : Verify search page appears
    Verify search page appears
        # Step 3 : Click search button
    Click search button
        # Step 4 : Verify the booked tickets list page
    Verify the booked tickets list page