*** Settings ***

Documentation        Login page
Library              Browser


*** Keywords ***
Go to login page

    New Browser        headless=false
    New Page           https://trade-sticker-dev.vercel.app

Submit credentials
    
    [Arguments]        ${email}        ${password}
    Fill Text          css=input[name=email]        ${email}
    Fill Text          css=input[name=password]     ${password}
    Click              css=button >> text=Entrar

Toast message should be
    
    [Arguments]        ${expected_message}
    Wait For Elements State        css=.Toastify__toast-body div >> text=${expected_message}       Visible     3

    
 