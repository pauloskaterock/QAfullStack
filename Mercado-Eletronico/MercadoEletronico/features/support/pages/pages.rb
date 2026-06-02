class LoginPage  
    include Capybara::DSL

    def acessar
        visit 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

    end


    def conta

        find('#email')

    end

    def pw
      find('#passwd')

    end

    def entrar
        click_button "Sign in"

    end

end
                