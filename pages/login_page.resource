*** Settings ***
Documentation   this file handles all the operation in the nopCommerce

Resource    ../base/common_functionality.resource

*** Variables ***
${FNAME_LOCATOR}        name=first-name
${LNAME_LOCATOR}        name=last-name
${EMAIL_LOCATOR}        name=email
${AVAILABIITY_LOCATOR}      xpath=//*[@id="check-availability-button"]
${USERNAME_LOCATOR}     name=username
${PLACE_LOCATOR}        name=country dropdown
${REGISTER_LOCATOR}     xpath=//*[@id="register-button"]
${ERROR_LOCATOR}        xpath=//div[contains(text(),'Invalid")]

*** Keywords ***
Enter Firstname
    [Arguments]     ${fname}
    Input Text    ${FNAME_LOCATOR}    ${fname}

Enter Lastname
    [Arguments]     ${lname}
    Input Text    ${LNAME_LOCATOR}    ${lname}

Enter Email
    [Arguments]     ${email}
    Input Text    ${EMAIL_LOCATOR}    ${email}

Click
    [Arguments]     ${AVAILABIITY_LOCATOR}

Enter Username
    [Arguments]     ${username}
    Input Text    ${USERNAME_LOCATOR}       ${username}

Enter Place
    [Arguments]     ${place}
    Select From List By Label    ${PLACE_LOCATOR}       ${place}

CLICK
    [Arguments]     ${REGISTER_LOCATOR}

validate Invalid Error Message
    [Arguments]     ${expected_error}
    Element Should Contain    ${ERROR_LOCATOR}      ${expected_error}





