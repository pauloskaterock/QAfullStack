class LoginPage < Base
    

  def logar(conta, skills)
    visit 'http://gitnder.herokuapp.com/'
    find("input[placeholder$=Github]")
    find("input[placeholder*=skills]")
    click_button "Enviar"
  end
end