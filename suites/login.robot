*** Settings ***
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Resource        ../pageObjects/base.robot




*** Test Cases ***
User Should Be Able To Login with Valid Data
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username
    Input Password
    Click Sign In Button On Sign In Screen
    Verify User Sucessfully Login
    Close Flight Application
