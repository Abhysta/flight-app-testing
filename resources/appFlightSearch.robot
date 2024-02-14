*** Settings ***
Library    AppiumLibrary
Library    Telnet
Resource    appFlightSignIn.robot

*** Variables ***
${search}              //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]
${searchInput}        //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]
${buttonSearch}        //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

*** Keywords ***
Tap search button
    Open Test Application
    Tap Akses
    User Input Login Data
    Tap Login Akses
    Wait Until Page Contains    Sign Out
    Set Appium Timeout        10
    Tap        ${search}
    Wait Until Page Contains    Enter Flight Number

User Input search
    Input Text    ${searchInput}    DA935
    Tap    ${buttonSearch}