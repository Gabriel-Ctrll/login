*** Settings ***
Library            SeleniumLibrary


*** Keywords ***
Abrir navegador
    TRY    
           Open Browser    browser=chrome                
           Maximize Browser Window
           
    EXCEPT  "Possivel falha ao iniciar o site"
            Log    "Sistema fora do ar"
        
    END
      
Fechar navegador
    Close Browser
    