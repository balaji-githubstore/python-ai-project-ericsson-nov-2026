*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://generativelanguage.googleapis.com/v1beta
${API_KEY}     xxxxx

${MODEL}       gemini-3.5-flash-lite

*** Test Cases ***
Call Gemini API
    ${headers}=    Create Dictionary    Content-Type=application/json    x-goog-api-key=${API_KEY}
    ${payload}=    Create Dictionary    model=${MODEL}    input=Explain how TCP congestion control works in two sentences.

    Create Session    gemini_session    ${BASE_URL}    verify=True
    ${response}=    POST On Session    gemini_session    /interactions    json=${payload}    headers=${headers}
    
    Log    ${response.text}
    Should Be Equal As Integers    ${response.status_code}    200

