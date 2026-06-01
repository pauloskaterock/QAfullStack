#language:pt


Funcionalidade: like
   Para que eu possa dar matchers em outros usuarios
   sendo um usuario que iniciou uma nova sessão
   quero curtir usuarias

 Cenario: curtir
  Dado que "goku" possui um perfil cadastrado
  E eu acesso o gitnder
  Quando eu dou like em "goku"
  Então esse perfil deve sumir da lista


