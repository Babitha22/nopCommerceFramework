*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=edge      executable_path=${EXECDIR}${/}drivers${/}msedgedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.nopcommerce.com/
    Click Element    xpath=//a[@class='ico-login']
    Input Text    id=Email          babi@gmail.com
    Input Password    id=Password    Pass123
    Click Element     xpath=//input[@class='button-1 Login-button']
    Close Browser

TC2
    Input Text    name=first-name    babitha
    Input Text    name=last-name    shekar
    Input Text    name=email    babithashekar@gmail.com
    Input Text    name=confirm-email    babithashekar@gmail.com
    Click Element    xpath=//*[@id="check-availability-button"]
    Input Text    name=username    babitha
    Select From List By Label    name=country-dropdown      Angola
    Click Element    xpath=//*[@id="TimeZoneId"]
    Click Element    xpath=//*[@id="Password"]
    Click Element    xpath=//*[@id="ConfirmPassword"]
    Select From List By Label    name=My company primarily dropdown        I am student
    Click Element    xpath=//*[@id="register-button"]
    
    
TC3
    Go To    url=https://demo.nopcommerce.com/
    ${title}        Get Title
    Log To Console    ${title}
    Click Element    name=storedemo
    Click Element    name=showcase
    Click Element    xpath=//*[@id="showcase-page"]/
    Click Element    xpath=//*[@id="showcase-page"]/
    Click Element    name=case studies
    Click Element    xpath=//*[@id="case-studies-page"]/
    Click Element    xpath=//*[@id="case-studies-page"]/
    Click Element    name=all features
    Click Element    xpath=//*[@id="features-page"]/body
    Click Element    xpath=//*[@id="features-page"]/body
    Close Browser

TC4
     Go To    url=https://demo.nopcommerce.com/
    ${title}        Get Title
    Log To Console    ${title}
    Click Element    name=downloads
    Click Element    name=download nopCommerce
    Click Element    xpath=//*[@id="download-nopcommerce-page"]/
    Click Element    xpath=//*[@id="download-nopcommerce-page"]/
    Click Element    name=marketplace
    Click Element    xpath=//*[@id="marketplace-page"]/
    Click Element    xpath=//*[@id="marketplace-page"]/
    Click Element    name=translations
    Click Element    name=shqip
    Click Element    xpath=//*[@id="translations-page"]/
    Click Element    xpath=//*[@id="translations-page"]/
    Close Browser
