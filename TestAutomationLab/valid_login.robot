*** Settings ***
Library    SeleniumLibrary
Resource    resource.robot

*** Test Cases ***
Open Workshop Registration Page
    Open Browser    ${REG_URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Workshop Registration Page Should Be Open
    Location Should Be    ${REG_URL}
    Title Should Be    Registration

Register Success
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone No.       091-001-1234
    Click Register Button
    Go To Success Page

Register Success No Organization Info
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Email           somyod@kkumail.com
    Input Phone No.       091-001-1234
    Click Register Button
    Go To Success Page