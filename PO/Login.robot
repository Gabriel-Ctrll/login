*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${Login_URLL}               https://segurosunimed.movidesk.com/
${Login_URL}                https://segurosunimed.movidesk.comm/
${Login_Box}                //div[@class='login-box pt-10 pb-10 row']
${Login_Campo_Usuario}      //input[@name='UserName']
${Login_Campo_Senha}        //input[contains(@data-val-required,'O campo senha deve ser informado.')]
${Login_Usuario}            teste
${Login_Senha}              teste
${Login_Button_Entrar}      //button[contains(.,'Entrar')]


*** Keywords ***
Acessar pagina do MoviDesktop
      Go To        ${Login_URLL}
    Wait Until Page Contains Element  ${Login_Box}  
   
    
Input dados login e senha
    Wait Until Element Is Visible                    ${Login_Campo_Usuario}   
    Input Text                                       ${Login_Campo_Usuario}           ${Login_Usuario}
    Click Element                                    ${Login_Campo_Senha}
    Input Text                                       ${Login_Campo_Senha}             ${Login_Senha}
    Click Button                                     ${Login_Button_Entrar}