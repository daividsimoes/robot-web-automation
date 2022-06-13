***Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=      welcome     Daivid Simoes
    Should Be Equal     ${result}       Ola Daivid Simoes, bem vindo ao curso basico de Robot Framework!