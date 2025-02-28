*** Settings ***
Library        AppiumLibrary

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123

*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

Input Username
    Input Text        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=${VALID_USERNAME}

Input Password    
    Input Text        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]        text=${VALID_PASSWORD}

Click Sign In Button On Sign In Screen
    Click Element     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Sucessfully Login
   Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]