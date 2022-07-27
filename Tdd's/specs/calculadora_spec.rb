require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do
    calculadora = Calculadora.new


    ### MÉTODO DE SOMA ###
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

    it('Deve somar números iguais')do
    expect(calculadora.soma(85, 85)).to eq 170
    end

    it('Deve somar dois números float positivos')do
    expect(calculadora.soma(10.5, 2.76)).to eq 13.26
    end


    ### MÉTODO DE SUBTRAÇÃO ###
    it('Deve subtrair dois números inteiros positivos')do
    expect(calculadora.subtracao(8, 2)).to eq 6
    end
    
    it('Deve subtrair um número qualquer com 0')do 
    expect(calculadora.subtracao(4, 0)).to eq 4
    end

    it('Deve subtrair dois números negativos')do
    expect(calculadora.subtracao(-9, -7)).to eq -16
    end 

    it('Deve subtrair um número negativo e outro positivo')do
    expect(calculadora.subtracao(-5, 2)).to eq -7
    end

    it('Deve subtrair dois números iguais')do
    expect(calculadora.subtracao(10, 10)).to eq 0
    end

    it('Deve subtrair dois números float')do
    expect(calculadora.subtracao(20.50, 10.75)).to eq 9.75
    end


    ### MÉTODO DE MULTIPLICAÇÃO ###
    it('Deve multiplicar dois números inteiros positivos')do
    expect(calculadora.multiplicacao(8, 4)).to eq 32
    end

    it('Deve multiplicar um número qualuer com 0')do
    expect(calculadora.multiplicacao(11, 0)).to eq 0
    end 

    it('Deve multiplicar dois números negativos')do
    expect(calculadora.multiplicacao(-5, -5)).to eq 25
    end

    it('Deve multiplicar um número negativo e outro positivo')do
    expect(calculadora.multiplicacao(-7, 5)).to eq -35
    end

    it('Deve multiplicar dois números iguais')do
    expect(calculadora.multiplicacao(9, 9)).to eq 81
    end

    it('Deve multiplicar dois números float')do
    expect(calculadora.multiplicacao(8.4, 5.3)).to eq 44.52
    end

    
    ### MÉTODO DE DIVISÃO ###
    it('Deve didivir dois números inteiros positivos')do
    expect(calculadora.divisao(20, 5)).to eq 4
    end

    it('Deve dividir um número por 0')do
    expect(calculadora.divisao(5, 0)).to eq "ERROR! Náo é possível dividir números por zero"
    end

    it('Deve dividir dois números negativos')do
    expect(calculadora.divisao(-30, -6)).to eq 5
    end

    it('Deve dividir um número negativo e outro positivo')do
    expect(calculadora.divisao(-40, 5)).to eq -8
    end

    it('Deve dividir dois números iguais')do
    expect(calculadora.divisao(20, 20)).to eq 1
    end

    
    ### MÉTODO DE POTENCIAÇÃO ###
    it('Deve calcular a potencia de um número positivo')do
    expect(calculadora.potencia(9, 2)).to eq 81
    end

    it('Deve calcular a potencia de 0')do
    expect(calculadora.potencia(0, 42)).to eq 0
    end

    it('Deve calcular a potencia de um número negativo')do
    expect(calculadora.potencia(-9, 3)).to eq -729
    end

    it('Deve potencializar o número 0 por 0')do
    expect(calculadora.potencia(0, 0)).to eq 1
    end
    

    ### MÉTODO DE PORCENTAGEM ###
    it('Deve calcular a porcentagem de um número positivo')do
    expect(calculadora.porcentagem(50, 100)).to eq 50
    end

    it('Deve calcular a porcentagem de um número negativo')do
    expect(calculadora.porcentagem(-70, 20)).to eq -14
    end

    it('Deve calcular a porcentagem de 0')do
    expect(calculadora.porcentagem(0, 50)).to eq 0
    end


    ### MÉTODO DE VOLUME ###
    it("Deve calcular o volume com medidas inteiras positivas")do
    expect(calculadora.volume(2, 6, 9)).to eq 108
    end

    it("Deve calcular o volume com largura 0")do
    expect(calculadora.volume(0, 5, 78)).to eq 0
    end

    it("Deve calcular o volume com altura 0")do
    expect(calculadora.volume(32, 0, 7)).to eq 0
    end

    it("Deve calcular o volume com comprimento 0")do
    expect(calculadora.volume(68, 50, 0)).to eq 0
    end

    it("Deve calcular o volume com medidas float positivas")do
    expect(calculadora.volume(6.3, 2.8, 11.1)).to eq 195.8
    end

    it("Deve calcular o volume com medidas inteiras negativas")do
    expect(calculadora.volume(-6, -20, -2)).to eq "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
    end

    it("Deve calcular o volume com medidas float negativas")do
    expect(calculadora.volume(-9.5, -3.6, -30.9)).to include "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
    end






end