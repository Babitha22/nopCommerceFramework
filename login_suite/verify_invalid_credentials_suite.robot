*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials

Resource    ../pages/login_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template   Verify Invalid Credentials Template

*** Test Cases ***
TC1     babitha        shekar123     babithashekar@gmail.com       Invalid username or password
TC2    ${EMPTY}    sheer        sheer@gmail.com       Invalid username or password
TC3     peter       ${EMPTY}        peter@gmail.com       Invalid username or password

*** Keywords ***
Verify Invalid Credentials Template
    [Arguments]     ${fname}    ${lname}    ${email}    ${username}
    Enter Firstname    ${fname}
    Enter Lastname    ${lname}
    Enter Email    ${email}
    Click    ${AVAILABIITY_LOCATOR}
    Enter Username    ${username}
    Verify Invalid Error Message    ${expected_error}



