*** Settings ***
Library    DateTime
Library    String

*** Test Cases ***
TC1
    Log To Console    message=Hello World
    Log To Console    Welcome to session

TC2
    ${my_name}    Set Variable    Balaji Dinakaran
    Log To Console    ${my_name}

TC3
    ${radius}   Set Variable    10
    # area of circle - 3.14*${radius}*${radius} 
    ${result}    Evaluate    3.14*${radius}*${radius}     
    Log To Console    ${result}     

TC4
    ${Current_data}    Get Current Date
    Log To Console    ${Current_data}

TC5   
    ${num1}    Set Variable    $230,000,000
    ${num2}    Set Variable    $360,000
    # remove $ and ,
    # add num1 and num2 and print the result 
    ${num1}    Remove String    ${num1}    $    ,
    ${num2}    Remove String    ${num2}    $    ,
    Log To Console    ${num1}
    Log To Console    ${num2}
    # ${num1}    Convert To Number    ${num1}
    
    ${result}     Evaluate    ${num1}+${num2}
    Log To Console    the result is ${result}$  
    Log     message=Server connection 189.388.388.33 connected

  
# TC6
#     # declare radius as 10 
#     # area of circle and print it 
