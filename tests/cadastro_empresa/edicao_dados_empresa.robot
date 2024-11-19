

*** Settings ***   
Resource     ../../variables/variables.robot
Resource   ../../resources/cadastro_empresa/Edicao_dados_empresa.resource
Resource   ../../resources/cadastro_empresa/acesso_tela_cadastro_empresa.resource

Library      SeleniumLibrary
Library      String

*** Test Cases ***
Editar company
    [Setup]    Fazer Login de usuario e acessar a tela de cadastro 
    Editar empresa com o campo "CNPJ" vazio.
    Editar Empresa com Bairro Alfanumérico Inválido
    Editar empresa com o campo "Telefone" com caracteres inválidos (alfanuméricos e especiais).     