Dado("que possuo a conta {string}") do |conta|
  @conta = conta
end

  Dado("possuo skills {string}") do |skills|
    @skills = skills
  end

  Quando("eu entro no gitnder") do
    login = LoginPage.new


    login.logar(@conta, @skills)
   

  end


  Então("deve ser a area logada") do
    users =  UsersPage.new
    expect(usuario_logado).to be true
  end


  

Então("devo ver a mesnagem de alerta {string}") do |mensagem_esperada|
  alert = find(".alert-dark")
  expect(alert.text).to eql mensagem_esperada
end
 
  
