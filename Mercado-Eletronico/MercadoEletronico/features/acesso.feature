#language: pt

Funcionalidade: Acesso
    Sendo um visitante do site Automation Practice
    Quero fazer a minha conta
    Para que eu possa realizar minhas compras


Cenario: Login com sucesso
    Dado que possuo a conta "pauloengenharia5@yahoo.com"
    E utilizo meu password "123456"
    Quando eu entrar no site Automation practice
    Então devo ser redirecionado para a area logada


Cenario: Login invalido
    Dado que possuo a conta "phskaterock" 
    Quando eu entrar no site Automation practice
    Então devo ver a mensagem "There is 1 error\nInvalid email address."


Cenario: Login em branco
    Dado que possuo a conta "" 
    Quando eu entrar no site Automation practice
    Então devo ver o erro "There is 1 error\nAn email address required."
