*** Settings ***

Documentation        Dashboard page
Library              Browser

*** Keywords ***
User logged in
    Get Text          css=.header-content strong        equal        Aquela figurinha incrível a um clique de distância.

Search User
    [Arguments]        ${target}
    Fill Text        input[placeholder^=Busque]        ${target}
    Click        css=button >> text=Buscar

Select Sticker
    [Arguments]        ${name}
    Click        xpath=//img[@alt="${name}"]/..

Get In Touch
    Click        css=button >> text=Entrar em contato

Whatsapp Sticket Message
    [Arguments]        ${sticker_name}

    ${expected_message}        Set Variable        Oi, achei o seu contato no Trade Sticker. Estou interessado(a) na figurinha do ${sticker_name}, bora negociar?

    Switch Page        NEW
    Wait For Elements State        css=p >> text=${expected_message}
    ...        visible        
    ...        5000