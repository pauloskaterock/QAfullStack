describe 'visitar web page' ,:visit do

    it ' Visitar a pagina do Arduino' do

        visit 'https://www.arduino.cc'

        expect(page.title).to eql "Arduino - Home"
        puts page.title
    end
end