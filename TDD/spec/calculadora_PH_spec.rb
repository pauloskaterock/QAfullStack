require 'calculadoraPH'


describe CalculadoraPH do 

    context 'somar numeros' do 
        it 'Testar a soma de  dois Numeros' do 
            calc = CalculadoraPH.new
            
            expect(calc.somar(3,2)).to eql(5)

        end

        it 'Testar a soma de  Tres Numeros' do 
            calc = CalculadoraPH.new
            
            expect(calc.somar(3,2,4)).to eql(9)

        end
    end


end

# https://github.com/pauloskaterock
# https://github.com/rspec