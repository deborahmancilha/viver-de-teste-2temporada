*** Settings ***
Documentation        Teste de negociação de figurinhas da copa
Resource        ../resources/main1.resource

*** Test Cases ***
Deve negociar a figurinha Neymar Legend

    Go to login page
    Submit credentials        papito@gmail.com        vaibrasil
    User logged in

    Search User           legend
    Select Sticker        Neymar Jr
    Get In Touch
    Whatsapp Sticket Message        Neymar Jr
    Take Screenshot

