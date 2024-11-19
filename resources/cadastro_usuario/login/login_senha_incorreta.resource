*** Settings ***
Library    SeleniumLibrary    
Library     String

*** Variables ***
${urlBase}          https://automacao.qacoders.dev.br/
${emailInput}       id=email   # o que foi resgatado  
${emailValido}      sysadmin@qacoders.com
${senhaInput}       id=password
${senhaValida}      1234@Test
${botaoInput}       id=login
${senhaIncorreta}   12345
${simboloErro}      css=div.css-164cp4c

*** Keywords ***   # palavras chaves
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window   
Fechar o navegador
    Close Browser   
Passo 1 - Acessar a pagina de login
    Open Browser    browser=chrome
    Maximize Browser Window   
    Go To    url=${urlBase}
Passo 2 - Digitar um e-mail válido 
    Wait Until Element Is Visible    locator=${emailInput}    # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Text                       locator=${emailInput}  text=${emailValido}
    #sleep  5   # para  aumentar o tempo da tela aberta  nao e uma boa pratica
Passo 3 - digitar uma senha incorreta
    Wait Until Element Is Visible    locator=${senhaInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Password                   locator=${senhaInput}    password=${senhaIncorreta}
    # sleep  5   # para  aumentar o tempo da tela aberta 
Passo 4 - Digitar uma senha valida 
    Wait Until Element Is Visible    locator=${senhaInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Password                   locator=${senhaInput}    password=${senhaValida}
    # sleep  5   # para  aumentar o tempo da tela aberta 
Passo 5 - clicar no botao entrar 
    Wait Until Element Is Visible    locator=${botaoInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Click Button                     locator=${botaoInput}    
    Sleep    5
Passo 6 -verificar se um simbolo ou mensagem de erro aparece 
    Wait Until Element Is Visible    ${simboloErro}
    Sleep    5
Passo 7 - Verificar se o login foi bem-sucedido (Logout aparece)
    Wait Until Page Contains    text=Logout    # Verifica se o texto "Logout" aparece após login bem-sucedido
    Sleep    5  
