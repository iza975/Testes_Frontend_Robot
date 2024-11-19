
*** Settings ***   
Resource     ../../variables/variables.robot
Resource   ../../resources/cadastro_empresa/acesso_tela_cadastro_usuario.resource


Library      SeleniumLibrary
Library      String

*** Test Cases ***
Fazer Login de usuario e acessar a tela de cadastro
   Abrir o navegador e acessar página inicial
   Realizar Login
   Acessar Tela de Cadastro de Usuários
   