*** Settings***
Documentation            Teste abrir pagina de login
Resource                 teste_resource.robot
Resource                 ./PO/Login.robot
Test Setup               Abrir navegador
Test Teardown            Fechar navegador





*** Test Cases ***
Test login
    [Documentation]        Esse test verificara a pagina de login no MoviDesktop
    ...                    E realizara o login
    Acessar pagina do MoviDesktop
    Input dados login e senha
    
 
    