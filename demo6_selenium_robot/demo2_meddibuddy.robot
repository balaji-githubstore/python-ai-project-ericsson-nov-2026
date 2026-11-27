# /*
# Task 1
# 1.        Navigate onto https://www.medibuddy.in/
# 2.        Close if any popup and Click on Login
# 3.        Click on I have Corporate Account 
# 4.        Click on Learn More
# 5.        Click on Skip
# 6.        Click on Login using Username & Password
# 7.        Enter username as john 
# 8.        Enter password as john123 
# 9.        Click on show password 
# 10.       Click log in 
# 11.       Get the error message shown and print it in terminal  

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.medibuddy.in/
    Click Element    link=Login
    Click Element    xpath=//div[text()='I have a Corporate Account']
    # click on learn more 
    # click on skip
    Sleep    5s
    Close Browser


   
