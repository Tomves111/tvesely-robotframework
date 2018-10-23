*** Settings ***
Test Setup  Log Setup
Test TearDown  Log TearDown
Library  SeleniumLibrary
*** Variables ***
${initial_variable}   Initial_Value
*** Test Cases ***
First Test
    ${local_variable} = Get Time
    Get Time And Print To Log
*** Keywords ***
Get Time And Print To Log
    ${local_variable} = Get Time
    Log  ${local_variable}
    Log To Console  ${initial_variable}
