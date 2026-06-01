#language:pt

Funcionalidade: Acesso
  Para que eu possa conhecer devs e qas com skills em comun
  Que possui uma conta no github
  Quero poder iniciar uma nova sessão

 
  Cenario: Nova sessão
    
    Dado que possuo a conta "pauloskaterock" 
    E possuo skills "ruby,arduino,python"
    Quando eu entro no gitnder
    Então deve ser a area logada 


     
  
  Cenario: Conta nao existe no github

    Dado que possuo a conta "phsurf"
    Quando eu entro no gitnder
    Então devo ver a mesnagem de alerta "Conta Github não existe :("

  @temp 
  Cenario: Conta nao informada 

    Dado que possuo a conta "" 
    Quando eu entro no gitnder
    Então devo ver a mesnagem de alerta "Conta Github não existe :("