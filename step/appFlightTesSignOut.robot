***Settings***
Library          AppiumLibrary
Resource        ../resources/appFlightSignIn.robot

*** Test Cases ***
User SignOut In App Flight
    Open Test Application
    Tap Akses
    User Input Login Valid Data
    Tap Login Akses
    Wait Until Page Contains    Sign Out
    Tap SignOut Button