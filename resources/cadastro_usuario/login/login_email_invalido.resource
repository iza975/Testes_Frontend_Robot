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
${emailInvalido}    jjjj
${mensagemErroLocator}      css=p.css-18xtib3
${mensagemErro}      Digite um email válido


*** Keywords ***   # palavras chave  s
Abrir o navegador
    Open Browser    browser=chrome 
    Maximize Browser Window   
Fechar o Navegador
    Close Browser   
Passo 1 - Acessar a pagina de login
    Open Browser    browser=chrome
    Maximize Browser Window   
    Go To    url=${urlBase}
Passo 2 - Digitar um e-mail inválido e verificar a mensagem de erro 
    Wait Until Element Is Visible    locator=${emailInput}    # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Text                       locator=${emailInput}  text=${emailInvalido}  # pressiona enter apos digitar o email
    Wait Until Element Is Visible    ${mensagemErroLocator}    # verifica de o elemento de erro aparece 
    Element Text Should Be           ${mensagemErroLocator}      ${mensagemErro}
    Sleep    10
#     #sleep  5   # para  aumentar o tempo da tela aberta  nao e uma boa pratica
Passo 3 - Digitar uma senha válida
    Wait Until Element Is Visible    locator=${senhaInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Password                   locator=${senhaInput}    password=${senhaValida}
    sleep  5   # para  aumentar o tempo da tela aberta 
Passo 4 - clicar no botao entrar 
    Wait Until Element Is Visible    locator=${botaoInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Click Button                     locator=${botaoInput}    
    Sleep    5

