***Settings***
Library          AppiumLibrary
Resource        ../resources/appFlightSignIn.robot


***Test Cases***
User Login In App Flight Valid Data
    Open Test Application
    Tap Akses
    User Input Login Valid Data
    Tap Login Akses
    Wait Until Page Contains    Sign Out

User Login In App Flight Invalid Data
    Open Test Application
    Tap Akses
    User Input Login Invalid Data
    Tap Login Akses
    Page Should Contain Text      Invalid username
    
    

