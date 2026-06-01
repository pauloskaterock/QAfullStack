describe ' meu primeiro script'  do

    # before(:each) do
    #     page.current_window.resize_to(1220, 800)


    # end

    # it 'visitar a pagina' do
    #         puts "visitando a pagina"
    #         visit "/"
    #         puts page.title

    # end
    it 'visitar a pagina do google' do
        puts "visitando a pagina"
        visit 'https://www.google.com/'
        expect(page.title).to eql "Google"
        puts page.title

    end



end