*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    Go To    url=https://opensource-demo.orangehrmlive.com/
    # click on OrangeHRM, Inc.
    Click Element    xpath=//a[contains(text(),'OrangeHRM')]
    # switch to second tab using title 
    Switch Window    OrangeHRM: All in One HR Software for Businesses | OrangeHRM
    Click Element    link=Book a Free Demo
    Input Text    id=Form_getForm_FullName    john wick
    # switch using title 
    Switch Window    OrangeHRM
    Log Title
    Sleep    5s
    Close Browser

TC2 Switch to new tab using NEW and MAIN
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    
    Go To    url=https://opensource-demo.orangehrmlive.com/
    # click on OrangeHRM, Inc.
    Click Element    xpath=//a[contains(text(),'OrangeHRM')]
    # switch to latest opened tab
    Switch Window    NEW
    Click Element    link=Book a Free Demo
    Input Text    id=Form_getForm_FullName    john wick
    # switch using main tab (first tab) 
    Switch Window   MAIN
    Sleep    5s
    Close Browser

TC3
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.citigroup.com/global/about-us/global-presence/india
    Mouse Over    xpath=//button[text()='My Account']
    # click on Banking with citi 
    Click Element     xpath=//div[text()='Banking with Citi']
    Sleep    5s
    Close Browser





