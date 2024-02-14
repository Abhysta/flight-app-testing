*** Settings ***
Library    AppiumLibrary
Resource    ../resources/appFlightBooking.robot

*** Test Cases ***
User Booking Flight One Way Valid Data
    User Click Button book
    User Insert Data book
    User Insert Valid Data Flight
    User Choose Valid Payment

User Booking Flight Round Trip Valid Data
    User Click Button book
    User Insert Data book Round Trip
    User Insert Data book
    User Insert Valid Data Flight
    User Choose Valid Payment

User Booking Flight One Way Invalid Data Flight
    User Click Button book
    User Insert Data book
    User Insert Invalid Data Flight
    User Choose Valid Payment
    
User Booking Flight One Way Invalid Data Payment
    User Click Button book
    User Insert Data book
    User Insert Valid Data Flight
    User Choose Invalid Payment