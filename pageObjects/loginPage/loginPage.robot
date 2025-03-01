*** Settings ***
Library        AppiumLibrary
Variables      login-page-locator.yaml

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123

*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=${username_input}

Input Username
    [Arguments]       ${username}
    Input Text        locator=${username_input}        text=${username}


Input Password 
    [Arguments]       ${password}
    Input Text        locator=${password_input}        text=${VALID_PASSWORD}

Click Sign In Button On Sign In Screen
    Click Element     locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify User Sucessfully Login
   Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"] 

# Verify User Failed Login
#     Wait Until Element is Visible    locator=//android.widget.Toast[@text="Invalid username/password"]