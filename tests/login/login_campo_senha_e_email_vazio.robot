
*** Settings ***   # caminhos dentro de ourtros arquiv
Resource      ../../resources/cadastro_usuario/login/login_campo_senha_e_email_vazio.resource


Test Setup     Abrir o navegador   
Test Teardown  Fechar o navegador 


*** Test Cases ***  
Cenario de teste: Login com os campos e-mail e senha vazios
    Abrir o navegador
    Passo 1 - Acessar a pagina de login 
    Passo 2 - Deixar o campo email vazio 
    Passo 3 - Deixar o campo senha vazio
    Passo 4 - clicar no botao entrar 
    Passo 5 - verificar mensagem de erro   
    Fechar o navegador