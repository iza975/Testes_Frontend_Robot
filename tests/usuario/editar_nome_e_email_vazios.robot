*** Settings ***
Resource       ../../resources/cadastro_usuario/usuario/editar_nome_e_email_vazio.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador
*** Test Cases ***  
Cenario de teste: Editar cadastro não preenchendo nenhum dos campos e clicar no botão "Cancelar" 
    Passo 1 - Acessar a pagina de login  
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários 
    Passo 6 - Nao preencher Nome Completo e E-mail Vazios
    Passo 7 - Clicar no Botão Cancelar
    
