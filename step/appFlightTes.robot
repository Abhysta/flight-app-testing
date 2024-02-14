***Settings***
Library          AppiumLibrary
Resource        ../resources/appFlightSignIn.robot
Resource        ../resources/appFlightSearch.robot
Resource    ../resources/appFlightBooking.robot

***Test Cases***
User Login In App Flight
    Open Test Application
    Tap Akses
    User Input Login Data
    Tap Login Akses
    Wait Until Page Contains    Sign Out
    

User Search In App Flight
    Tap search button
    User Input search
    

User Booking Flight
    User Click Button book
    User Insert Data book
    User Choose Payment