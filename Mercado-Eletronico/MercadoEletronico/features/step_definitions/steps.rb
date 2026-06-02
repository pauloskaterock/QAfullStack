
Dado('que possuo a conta {string}') do |conta|
   @conta = conta # @conta variavel de instancia (Ruby)
end
  
Dado('utilizo meu password {string}') do |pw|
   @pw = pw # @pw variavel de instancia (Ruby)
end
  
Quando('eu entrar no site Automation practice') do # neste codigo entramos na page e acessamos a conta traves do login e password
   
    
    login = LoginPage.new
    login.acessar
    login.conta.set @conta
    login.pw.set @pw
    login.entrar
end

  
Então('devo ser redirecionado para a area logada') do
    #    usuario_logado =  page.has_css?(".cart_block block exclusive")
    #    expect(usuario_logado).to be true
    expect(page.title).to eql "My account - My Store" #achei mais facil a utilização do expect para validação ja que o codigo fica um pouco mais bonito
end
  
Então('devo ver a mensagem {string}') do |mensagem_erro|

alert = find(".alert.alert-danger") # a variavel alert grava o comando encontrada no htmle css da oage
expect(alert.text).to eql "There is 1 error\nInvalid email address." # validação login errado utilizando o expect do Rspec

end

Então('devo ver o erro {string}') do |mensagem_branco|
    danger = find(".alert.alert-danger") # o metodo find eu utilizei para encontrar o elemento da page
    expect(danger.text).to eql "There is 1 error\nAn email address required." # validação campos em branco
end