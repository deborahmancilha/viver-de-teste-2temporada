*** Settings ***
Library   Browser

*** Test Cases ***
Slogan da página principal
    New Browser     headless=false  ##execução assistida
    New Page        https://trade-sticker-dev.vercel.app/
    Get Text        .logo-container h2    contains    Conectando colecionadores de figurinhas da copa.
    Take Screenshot