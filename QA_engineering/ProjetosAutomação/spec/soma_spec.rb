describe 'suite rspec' ,:soma do
    it 'Soma de valores' do
        soma = 10 + 5
        expect(soma.to_s).to eql '15'
    end

end