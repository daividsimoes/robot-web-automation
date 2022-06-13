*** Settings ***
Resource        base.robot
Test Setup  
    ...     Nova sessão
Test Teardown       
    ...     Encerra sessão


*** Variables ***
${check_thor}       id:thor
${check_ironman}    css:input[type='checkbox'][value='iron-man']
${check_cap}        xpath://input[@type='checkbox'][@value='cap']

*** Test Cases ***
Marcando opção com ID
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    checkbox Should Be Selected     ${check_thor}
    
Marcando opção com CSS Locator
    [Tags]      iron-man
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    checkbox Should Be Selected     ${check_ironman}

Marcando opção com Xpath
    [Tags]      cap
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_cap} 
    checkbox Should Be Selected     ${check_cap}