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
    Input Username        username=support@ngendigital.com
    Input Password        password=abc123
    Click Sign In Button On Sign In Screen
    Verify User Sucessfully Login
    Close Flight Application

User Should Not Be Able To Login with Unregistered Email
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username        username=ibnu@ngendigital.com
    Input Password        password=abc123
    Click Sign In Button On Sign In Screen
    # Verify User Failed Login
    Close Flight Application

User Should Not Be Able To Login with Wrong Password
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username        username=support@ngendigital.com
    Input Password        password=abcde
    Click Sign In Button On Sign In Screen
    # Verify User Failed Login
    Close Flight Application

User Should Not Be Able To Login with Unregistered email and Wrong Password
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username        username=ibnu@ngendigital.com
    Input Password        password=abcde12345
    Click Sign In Button On Sign In Screen
    # Verify User Failed Login
    Close Flight Application

User Should Not Be Able To Login with Empty Email
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username        username=
    Input Password        password=abc123
    Click Sign In Button On Sign In Screen
    # Verify User Failed Login
    Close Flight Application

User Should Not Be Able To Login with Empty Password
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username        username=support@ngendigital.com
    Input Password        password=
    Click Sign In Button On Sign In Screen
    # Verify User Failed Login
    Close Flight Application