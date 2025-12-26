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

Empty First Name
    Open Browser    ${REG_URL}    ${BROWSER}
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone No.       091-001-1234
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter your first name!!

Empty Last Name
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone No.       091-001-1234
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter your last name!!

Empty First Name and Last Name
    Open Browser    ${REG_URL}    ${BROWSER}
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone No.       091-001-1234
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter your name!!

Empty Email
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Phone No.       091-001-1234
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter your email!!

Empty Phone Number
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter your phone number!!

Invalid Phone Number
    Open Browser    ${REG_URL}    ${BROWSER}
    Input First Name      Somyod
    Input Last Name       Sodsai
    Input Organization    CS KKU
    Input Email           somyod@kkumail.com
    Input Phone No.       1234
    Click Register Button
    Location Should Contain   ${REG_URL}
    Page Should Contain    Please enter a valid phone number!!
