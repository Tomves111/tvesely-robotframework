*** Settings ***
Library      Dialogs
Variables    ../Resources/hs2_variables.py

*** Keywords ***
Get Value And Compare
    ${user_input}=    Get Value From User    Please, enter some value: 
    Should Be Equal    ${user_input}    ${EXPECTED_VALUE}    Provided value is not the same as expected value. Test result: failed.   
    Log    Provided value is the same as expected value. Test result: passed. 