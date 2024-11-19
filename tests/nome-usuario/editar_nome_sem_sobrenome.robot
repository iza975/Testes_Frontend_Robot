
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource      ../../resources/cadastro_usuario/nome_usuario/editar_nome_sem_sobrenome.resource
  
Test Setup       Abrir o navegador   
Test Teardown    Fechar o navegador

*** Test Cases ***
Cenario de Testes: Editar Campo Nome com 01 palavra
    Abrir o navegador
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar   
    Passo 5 - Acessar Tela de Cadastro de Usuários
    Passo 6 - Editar Nome com apenas uma palavra 
    Passo 7 - Clicar no Botão Salvar Alterações
    # Passo 8 -verificar mensagem de erro
    