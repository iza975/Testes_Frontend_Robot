


*** Settings ***

Library    SeleniumLibrary     # ou outra biblioteca necessária
Library    String   

Resource     ../../variables/variables.robot
Resource   ../../resources/cadastro_usuario/email/edicao_email.resource
Resource   ../../resources/cadastro_empresa/acesso_tela_cadastro_usuario.resource

          # Importa variáveis globais

*** Test Cases ***
Cenario de Teste: Editar Email
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro
    Editar E-mail Vazio
    Editar E-mail Inválido sem domínio
    Editar E-mail Com Espaços
    Editar E-mail Válido