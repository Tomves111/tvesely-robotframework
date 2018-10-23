*** Settings ***
Documentation    Simple Exemple 
Library    SeleniumLibrary
*** Variables ***
${LOGIN URL}    https://www.cygnus.cloud/cygnus/login/?redirect=/cygnus/installations
${BROWSER}    Chrome

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    operator
    Input Password    P@ssword1 
    Submit Credential
    Welcome Page Should Be Open
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should be    CYGNUS | login page

Input Username
    [Arguments]    ${username}
    Input Text     username   ${username}
    
Input Password
    [Arguments]    ${password}
    Input Text     userPassword    ${password}
    
Submit Credential
    Click Button    SIGN IN
    
Welcome Page Should Be Open
    Title Should Be    CYGNUS
    