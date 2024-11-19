
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource         ../../resources/cadastro_usuario/login/login_senha_incorreta.resource

Test Setup     Abrir o navegador   
Test Teardown  Fechar o navegador

*** Test Cases ***  
Cenario de teste: Login com e-mail válido e senha inválida
    Abrir o navegador
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido
    Passo 3 - digitar uma senha incorreta  
    Passo 5 - clicar no botao entrar  
    Passo 6 - verificar se um simbolo ou mensagem de erro aparece 
    Fechar o navegador

