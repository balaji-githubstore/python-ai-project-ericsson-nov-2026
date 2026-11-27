*** Comments ***
Host: sql12.freesqldatabase.com
Database name: sql12841569
Database user: sql12841569
Database password: h7ES8Aul7n
Port number: 3306




*** Settings ***
Library    DatabaseLibrary

Suite Setup    Connect To Database    db_module=pymysql    db_name=sql12841569    db_user=sql12841569
...  db_password=h7ES8Aul7n    db_port=3306    db_host=sql12.freesqldatabase.com

Suite Teardown    Disconnect From Database

*** Test Cases ***
TC1
    ${Rows}=    Row Count    select * from Persons
    Log To Console    ${Rows}

TC2 select
    ${query}    Query    select * from Persons
    Log    ${query}
    Log    ${query}[0][0]


TC3 Update delete insert
    Execute Sql String    update Persons set LastName='john' where PersonID=1
    ${Rows}=    Row Count    select * from Persons where LastName='john' and PersonID=1
    Log To Console    ${Rows}
    Check Row Count    select * from Persons where LastName='john' and PersonID=1   ==     1