*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Chrome
${REG_URL}        file:///Users/fammy/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS_URL}    file:///Users/fammy/TestAutomationLab/StarterFiles/Success.html
${DELAY}          0

*** Keywords ***
Open Workshop Registration Page
    Open Browser    ${REG_URL}    ${BROWSER}
    Set Selenium Speed    ${DELAY}

Workshop Registration Page Should Be Open
    Location Should Be    ${REG_URL}
    Title Should Be    Registration

Input First Name
    [Arguments]    ${firstname}
    Input Text    id=firstname    ${firstname}

Input Last Name
    [Arguments]    ${lastname}
    Input Text    id=lastname    ${lastname}

Input Organization
    [Arguments]    ${organization}
    Input Text    id=organization    ${organization}

Input Email
    [Arguments]    ${email}
    Input Text    id=email    ${email}

Input Phone No.
    [Arguments]    ${phone}
    Input Text    id=phone    ${phone}

Click Register Button
    Click Button    id=registerButton

Go To Success Page
    Location Should Contain    ${SUCCESS_URL}
    Title Should Be        Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.