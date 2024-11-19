*** Settings ***
Library    SeleniumLibrary    
Library    String


*** Variables ***
${CADASTROS_BUTTON}         //*[@id="Cadastros"]/span     # Botao de cadastroda interface  CADASTRO
${USUARIOS_BUTTON}         //*[@id="Usuários"]/span        # botao de usuarios interface CADASTRO
${EDITAR_CADASTRO_BUTTON}   id=edit                          # botao cadastro interface CADASTRO
${FULL_NAME_FIELD}          id=fullName                  # ID do campo de nome completo
${EMAIL_FIELD}              id=mail                      # ID do campo de e-mail
${SAVE_BUTTON}              id=save                      # ID do botão de salvar
${NEW_FULL_NAME}            Nome Completo Cadastrado        # Novo nome para inserir
${NEW_EMAIL}                sysadmintestetdshvsvsd  
${urlBase}                  https://automacao.qacoders.dev.br/
${emailInput}               id=email                     # define a variavel email login
${emailValido}              sysadmin@qacoders.com
${senhaInput}               id=password                  # define a variavel senha login
${senhaValida}              1234@Test
${botaoInput}               id=login                     # define a variavel botao entrar
${ERROR_MENSAGEM_NOME_VAZIO}  xpath=//p[contains(text(), 'O campo nome completo é obrigatório')]  # Mensagem de erro para nome vazio
${NOME_UNICO}               MARIA 
${NOME_101_CARACTERES}      YYY YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
${NOME_100_CARACTERES}      YYY YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
${EMAIL_FORMATO_INVALIDO}   sysadmintestetdshvsvsdvsdqacoders.com
${MENSAGEM_ERRO_EMAIL}      xpath=//p[@class='css-bbipig' and contains(text(), 'Email inválido')]
#${CAMPO_EMAIL_VAZIO}        

*** Keywords ***
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
Passo 3 - Digitar uma senha valida
    Wait Until Element Is Visible    locator=${senhaInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Input Password                   locator=${senhaInput}    password=${senhaValida}
    # sleep  5   # para  aumentar o tempo da tela aberta 
Passo 4 - clicar no botao entrar   
    Wait Until Element Is Visible    locator=${botaoInput}   # esperar ate que o elemento esteja  vizivel # espera a informaçao de qual lugar esta esse elemento
    Click Button                     locator=${botaoInput}    
    Sleep    5
Passo 5 - Acessar Tela de Cadastro de Usuários
    Wait Until Element Is Visible    ${CADASTROS_BUTTON}    timeout= 60s
    Click Element    ${CADASTROS_BUTTON}
    Click Element    ${USUARIOS_BUTTON}
    Wait Until Element Is Visible    id=edit    timeout=30
    Click Element    id=edit   

Passo 6 - Editar Nome e preencher o email sem @  

    Input Text    ${FULL_NAME_FIELD}    ${NEW_FULL_NAME}
    Input Text    ${EMAIL_FIELD}         ${EMAIL_FORMATO_INVALIDO}


Passo 7 - Clicar no Botão Salvar Alterações
    Click Button    ${SAVE_BUTTON}

Passo 8 - Verificar Mensagem de Erro de Email Inválido
    Wait Until Element Is Visible    ${MENSAGEM_ERRO_EMAIL}    timeout=10s
    Element Text Should Be           ${MENSAGEM_ERRO_EMAIL}    Email inválido