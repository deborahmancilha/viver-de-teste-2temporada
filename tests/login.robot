*** Settings ***

Documentation        Login tests
Resource        ../resources/main1.resource

*** Test Cases ***

Deve logar com sucesso

    Go to login page
    Submit credentials        papito@gmail.com        vaibrasil  
    User logged in
    Take Screenshot
    
Não deve logar com senha incorreta

    Go to login page
    Go to login page
    Submit credentials             papito@gmail.com        vaibrasil1   
    Toast message should be        Credenciais inválidas, tente novamente!  
    Take Screenshot
    



    


