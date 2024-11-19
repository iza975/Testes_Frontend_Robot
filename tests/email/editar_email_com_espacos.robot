
*** Settings

Resource     ../../resources/cadastro_usuario/email/editar_email_com_espacos.resource


Test Teardown  Fechar o navegador 

*** Test Cases ***  
Cenario de teste: Editar campo "E-mail" contendo espaços
    Passo 1 - Acessar a pagina de login  
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários 
    Passo 6 - Editar Nome e preencher o email com espaços
    Passo 7 - Clicar no Botão Salvar Alterações
    Passo 8 - Verificar Mensagem de Erro de Email Inválido

  