*** Settings ***
Library  OperatingSystem

*** Variables ***
${MESSAGE}     Hello, World!
  
*** Test Cases ***
My Test
    [Documentation]    Example test
    Log  ${MESSAGE}
    My Keyword    /tmp
    
Another Test
    Should Be Equal    ${MESSAGE}    Hello, World!    

*** Keywords ***
My Keyword
    [Arguments]    ${path}
    Directory Should Exist    ${path}
    