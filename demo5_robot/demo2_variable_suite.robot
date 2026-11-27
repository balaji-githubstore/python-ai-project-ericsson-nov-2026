*** Settings ***
Library    Collections

*** Variables ***
${BROWSER_NAME}    chrome
@{COLORS}    red    green    yellow    blue
&{MY_DETAIL}    name=bala    role=trainer    mobile=898989

*** Test Cases ***
TC1
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${MY_DETAIL}

TC2
    Log To Console    ${BROWSER_NAME}
    Log To Console    ${COLORS}[0]
    Log To Console    ${MY_DETAIL}[name]

TC3
   @{fruits}     Create List    mango    apple    grapes
   Log To Console    ${fruits}
#    append item banana to the list
    Append To List    ${fruits}     banana
    Log To Console    ${fruits}
# insert watermelon at index 1
    Insert Into List     ${fruits}    1    watermelon
    Log To Console    ${fruits}
# remove apple from the list
    Remove Values From List    ${fruits}    apple   
    Log To Console    ${fruits} 

    
    # Remove From List    ${fruits}    2