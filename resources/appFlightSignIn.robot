***Settings***
Library      AppiumLibrary

*** Variables ***
${SignIn}              //android.widget.Button[@resource-id="com.example.myapplication:id/login"]
${username}            //android.widget.EditText[@resource-id="com.example.myapplication:id/username"] 
${password}            //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]
${buttonSignIn}        //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
${buttonSignOut}        //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

***Keywords***
Open Test Application
    Open Application    http://localhost:4723/wd/hub
    ...                 platformName=Android
    ...                 deviceName=vivo 2019
    ...                 appPackage=com.example.myapplication
    ...                 appActivity=com.example.myapplication.MainActivity                                              

Tap Akses
    Tap        ${SignIn}
    Wait Until Page Contains    username

User Input Login Valid Data
    Input Text         ${username}        support@ngendigital.com
    Input Text        ${password}        abc123

User Input Login Invalid Data
    Input Text         ${username}        ays123@gmail.com
    Input Text        ${password}        abc123

Tap Login Akses
    Tap       ${buttonSignIn}

Tap SignOut Button
    Tap    ${buttonSignOut}



    

