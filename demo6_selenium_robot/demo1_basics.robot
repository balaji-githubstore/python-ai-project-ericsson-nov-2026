*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://orangehrm.com/book-a-free-demo
    Click Element    id=CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
    Input Text    id=Form_getForm_FullName    john wick
    Input Text    id=Form_getForm_Email   john@acc.com
    Input Text    id=Form_getForm_Contact    87877887
    Select From List By Label    id=Form_getForm_Country    Algeria
    Input Text    name=JobTitle    AI engineer
    # select employee as 11-50 
    Select From List By Index    name=NoOfEmployees    2
    Click Element    id=Form_getForm_action_submitForm

    # assert the error - Please answer the captcha, if you do not see the captcha please enable JavaScript
    # ${actual_error}    Get Text    id=Form_getForm_error
    # Should Be Equal As Strings    ${actual_error}    Please answer the captcha, if you do not see the captcha please enable JavaScript
    Element Text Should Be    id=Form_getForm_error    Please answer the captcha, if you do not see the captcha please enable JavaScript
    Sleep    5s
    Close Browser

TC2 Verify Title
    Open Browser   browser=chrome
    Maximize Browser Window
    Go To    url=https://orangehrm.com/book-a-free-demo
    Title Should Be    Book a Free HRMS Demo | HR Software | HRMS | OrangeHRM



    
    