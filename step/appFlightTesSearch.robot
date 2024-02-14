*** Settings ***
Library        AppiumLibrary
Resource        ../resources/appFlightSearch.robot

*** Test Cases ***
User Search Valid In App Flight
    Tap search button
    User Input Valid Search

User Search Invalid In App Flight
    Tap search button
    User Input Invalid Search
    Page Should Contain Text    enter valid Flight