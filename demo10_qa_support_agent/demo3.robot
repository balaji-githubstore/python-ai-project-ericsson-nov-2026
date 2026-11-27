*** Settings ***
Library    demo1_qa_agent.py

*** Test Cases ***

*** Settings ***
Library    RequestsLibrary

# Suite Setup - before triggering first testcase in current file. only once
Suite Setup    Create Session    alias=petstore    url=https://petstore.swagger.io/v2
Suite Teardown    Delete All Sessions
# Suite Teardown  - after all the testcase ran. runs at end. only once

# Test Setup - before each test
# Test Teardown - after each test

*** Test Cases ***
TC1 Add Valid Pet To Store
    TRY
        ${req_body}    Get File For Streaming Upload    ${EXECDIR}${/}files${/}data.json
        &{header}    Create Dictionary    Content-Type=application/json    Connection=keep-live
        ${response}     POST On Session    alias=petstore    url=/pet    data=${req_body}    headers=${header}    expected_status=404
        Log    ${response.json()}
    EXCEPT    AS    ${error}
        Log    Error occurred during test execution    ${error}
        ${response}    Analyze Error Log    log=${error}
        Log    ${response}
        Fail
    END



