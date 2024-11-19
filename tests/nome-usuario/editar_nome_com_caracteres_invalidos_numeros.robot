
*** Settings ***   # caminhos dentro de ourtros arquivos
Resource            ../../resources/cadastro_usuario/nome_usuario/editar_nome_com_caracteres_invalidos_numeros.resource
Test Setup        Abrir o navegador   
Test Teardown     Fechar o navegador

*** Test Cases ***
Cenario de Testes: Editar Nome com caracteres invalidos Numeros (especiais)
    Abrir o navegador
    Passo 1 - Acessar a pagina de login
    Passo 2 - Digitar um e-mail válido 
    Passo 3 - Digitar uma senha valida
    Passo 4 - clicar no botao entrar 
    Passo 5 - Acessar Tela de Cadastro de Usuários
    Passo 6 - Editar Nome com caracteres invalidos Numeros (especiais)
    Passo 7 - Clicar no Botão Salvar Alterações
    # Passo 8 - Verificar a mensagem de erro
