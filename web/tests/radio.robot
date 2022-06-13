*** Settings ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionando por ID
    [Tags]      radio
    Go To                           ${url}/radios
    Select Radio Button             movies      cap     #Robot é preparado para executar por ID ou Value, neste caso colocamos apenas o valor
    Radio Button Should Be Set To   movies      cap     #Robot é preparado para executar por ID ou Value, neste caso colocamos apenas o valor

Selecionando por Value
    [Tags]      radio
    Go To                           ${url}/radios
    Select Radio Button             movies      guardians   #Robot é preparado para executar por ID ou Value, neste caso colocamos apenas o valor
    Radio Button Should Be Set To   movies      guardians   #Robot é preparado para executar por ID ou Value, neste caso colocamos apenas o valor