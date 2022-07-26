require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new

    ### METODO DE SOMA ###

    it('Deve somar dois números inteiros positivos')do
    expect(calculadora.soma(4, 5)).to eq 9
    end

    it('Deve somar um número qualquer com 0')do
    expect(calculadora.soma(9, 0)).to eq 9
    end

    it('Deve somar números negativos')do
    expect(calculadora.soma(-9, -10)).to eq -19
    end 

    it('Deve somar um numero negativo e outro positivo')do
        expect(calculadora.soma(-9, 5)).to eq -4
    end

    it("Deve somar números iguais")do
    expect(calculadora.soma(85, 85)).to eq 170
    end

    it("Deve somar dois números float positivos")do
    expect(calculadora.soma(10.5, 2.76)).to eq 13.26
    end

    ### METODO DE SUBTRACAO ###

    it('Deve subtrair dois inteiros positivos')do
    expect(calculadora.subtracao(8, 2)).to eq 6
    end
    
    it("Deve subtrair um numero qualquer com 0")do 
        expect(calculadora.subtracao(4, 0)).to eq 4
    end

    it('Deve subtrair dois números negativos')do
    expect(calculadora.subtracao(-9, -7)).to eq -2
    end 

    it('Deve subtrair um numero negativo e outro positivo')do
    expect(calculadora.subtracao(-5, 2)).to eq -7
    end

    it('Deve subtrair dois números iguais')do
    expect(calculadora.subtracao(10, 10)).to eq 0
    end

    it('Deve subtrair dois números float')do
    expect(calculadora.subtracao(20.50, 10.75)).to eq 9.75
    end

end