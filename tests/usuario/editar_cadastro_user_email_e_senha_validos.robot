*** Settings ***
Resource       ../../resources/cadastro_usuario/usuario/editar_cadastro_user_email_e_senha_validos.resource
Test Setup     Abrir o navegador 
Test Teardown  Fechar o navegador 

*** Test Cases ***  
Cenario de teste: Editar Nome E Email Válidos
    Passo 1 - Acessar a pagina de login  
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários 
    Passo 6 - Editar Nome e Email Válidos
    Passo 7 - Clicar no Botão Salvar Alterações


  

