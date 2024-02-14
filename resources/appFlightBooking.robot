*** Settings ***
Library    AppiumLibrary
Library    Process
Resource    appFlightSignIn.robot

*** Variables ***
${buttonBook}        //android.widget.Button[@resource-id="com.example.myapplication:id/book"]
${buttonOneWay}       //android.widget.TextView[@text="ONE WAY"]
${buttonFrom}        //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerFrom"]
${buttonFromChicago}        //android.widget.TextView[@resource-id="android:id/text1" and @text="Chicago"]
${buttonTo}               //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerTo"]
${buttonToParis}        //android.widget.TextView[@resource-id="android:id/text1" and @text="Paris"]
${buttonClass}        //android.widget.Spinner[@resource-id="com.example.myapplication:id/spinnerClass"]
${buttonClassBusiness}        //android.widget.TextView[@resource-id="android:id/text1" and @text="Business"]
${dateFrom}            //android.widget.TextView[@resource-id="com.example.myapplication:id/textStartDate"]
${dateFromDate}        //android.view.View[@content-desc="28 Agustus 2019"]
${dateTo}                //android.widget.TextView[@resource-id="com.example.myapplication:id/textEndDate"]
${dateToDate}            //android.view.View[@content-desc="30 Agustus 2019"]
${buttonOke}            //android.widget.Button[@resource-id="android:id/button1"]
${radioFlight}        //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlight"]
${radioFlighHotel}        //android.widget.RadioButton[@resource-id="com.example.myapplication:id/radioButtonFlightHotel"]
${checkDay}            //android.widget.CheckBox[@resource-id="com.example.myapplication:id/checkBoxDay"]
${buttonBooking}        //android.widget.Button[@resource-id="com.example.myapplication:id/book_flight"]
${price}                //android.widget.Button[@resource-id="com.example.myapplication:id/price1"]
${confirm}            //android.widget.Button[@resource-id="com.example.myapplication:id/confirm_order"]


*** Keywords ***
User Click Button book
    Open Test Application
    Tap Akses
    User Input Login Data
    Tap Login Akses
    Wait Until Page Contains    Sign Out
    Tap    ${buttonBook}
    Wait Until Page Contains    ONE WAY

# User Insert Data book One Way
#     Tap    ${buttonOneWay}

User Insert Data book
    Set Appium Timeout    10
    Tap    ${buttonFrom}
    Wait Until Element Is Visible    ${buttonFromChicago}
    Tap    ${buttonFromChicago}
    Set Appium Timeout    10
    Tap    ${buttonTo}
    Wait Until Element Is Visible    ${buttonToParis}
    Tap    ${buttonToParis}
    Set Appium Timeout    10
    Tap    ${buttonClass}
    Wait Until Element Is Visible    ${buttonClassBusiness}
    Tap    ${buttonClassBusiness}
    Set Appium Timeout    10
    Tap    ${dateFrom}
    Wait Until Element Is Visible    ${dateFromDate}
    Tap    ${dateFromDate}
    Tap    ${buttonOke}
    Set Appium Timeout    10
    Tap    ${dateTo}
    Wait Until Element Is Visible    ${dateToDate}
    Tap    ${dateToDate}
    Tap    ${buttonOke}
    Set Appium Timeout    10
    Tap    ${radioFlight}
    Tap    ${checkDay}
    Tap    ${buttonBooking}
    Wait Until Page Contains    price

User Choose Payment
    Tap    ${price}
    Tap    ${confirm}
    Wait Until Page Contains    CADX2214


    
