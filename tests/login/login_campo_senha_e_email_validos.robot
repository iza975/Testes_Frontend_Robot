
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource            ../../resources/cadastro_usuario/login/login_campo_senha_e_email_validos.resource

Test Setup     Abrir o navegador   
Test Teardown  Fechar o navegador

*** Test Cases ***  
Cenario de teste: login de usuario perfil de adm com sucesso 
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido  
    Passo 3 - digitar uma senha valida   
    Passo 4 - clicar no botao entrar    
    Passo 5 - verificar se realmente entrou no sistema

    
