*** Settings ***
Library    RequestsLibrary

# Suite Setup - before triggering first testcase in current file. only once
Suite Setup    Create Session    alias=petstore    url=https://petstore.swagger.io/v2
Suite Teardown    Delete All Sessions
# Suite Teardown  - after all the testcase ran. runs at end. only once

# Test Setup - before each test
# Test Teardown - after each test

*** Test Cases ***
TC1 Find Valid Pet By Id
    ${response}    GET On Session    alias=petstore    url=/pet/5    expected_status=200
    Log    ${response}
    Log    ${response.json()}
    Log    ${response.text}
    Log    ${response.headers}
    Log    ${response.json()}[id]
    Should Be Equal As Strings    ${response.json()}[id]       5
    Should Be Equal As Strings    ${response.json()}[name]       doggie


TC2 verify find valid status 
    ${response}    GET On Session    alias=petstore    url=/pet/findByStatus?status=sold    expected_status=200
    Log    ${response.json()}
    Log    ${response.json()}[0]
    Log    ${response.json()}[0][status]
    FOR  ${pet}  IN   @{response.json()}
        # Log    ${pet}[status]
        Should Be Equal As Strings    ${pet}[status]       sold
    END
    

TC3 Add Valid Pet To Store
    ${req_body}    Get File For Streaming Upload    ${EXECDIR}${/}files${/}data.json
    &{header}    Create Dictionary    Content-Type=application/json    Connection=keep-live
    ${response}     POST On Session    alias=petstore    url=/pet    data=${req_body}    headers=${header}    expected_status=200
    Log    ${response.json()}

    
TC4 Update Valid Pet To Store
    ${req_body}    Get File For Streaming Upload    ${EXECDIR}${/}files${/}data.json
    &{header}    Create Dictionary    Content-Type=application/json    Connection=keep-live
    ${response}     PUT On Session    alias=petstore    url=/pet    data=${req_body}    headers=${header}    expected_status=200
    Log    ${response.json()}


TC5 Delete valid pet
    ${response}    GET On Session    alias=petstore    url=/pet/6559    expected_status=200
    Log    ${response}