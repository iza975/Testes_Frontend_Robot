# sivas para o cadastro e edição do nome completo do usuário
*** Settings ***
     # Importa variáveis globais

Library    SeleniumLibrary     # ou outra biblioteca necessária
Library    String

Resource       ../../variables/variables.robot
Resource   ../../resources/cadastro_usuario/nome_usuario/edicao_nome_completo.resource
Resource   ../../resources/cadastro_empresa/acesso_tela_cadastro_usuario.resource

*** Test Cases ***
 Editar Nome 
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro
    Editar Nome Completo Vazio 
    Editar Nome Completo Inválido
    Editar Nome Completo Válido
    