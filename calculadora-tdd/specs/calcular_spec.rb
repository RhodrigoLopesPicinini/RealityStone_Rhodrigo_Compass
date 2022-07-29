require 'rspec'
require '../calculadora-projeto/Calculadora'

describe('Calculadora') do
    let(:calculadora) {Calculadora.new}

    #SOMA
    it("Somar dois valores 5 e 5") do
        expect(calculadora.calcular(5, 5, "+")).to eql("5 + 5 = 10")
    end

    it("Somar dois valores sendo um negativo 10 e -5") do
        expect(calculadora.calcular(10, -5, "+")).to eql("10 + -5 = 5")
    end

    it("Somar dois valores flutuantes 5.1 e 10.5") do
        expect(calculadora.calcular(5, 10.5, "+")).to eql("5 + 10.5 = 15.5")
    end

    #SUBTRAÇÃO
    it("Subtrair dois valores 10 e 5") do
        expect(calculadora.calcular(10, 5, "-")).to eql("10 - 5 = 5")
    end

    it("Subtrair dois valores com um negativo 10 e -6") do
        expect(calculadora.calcular(10, -6, "-")).to eql("10 - -6 = 16")
    end

    it("Subtrair dois valores flutuantes 10.3 e 5.1") do
        expect(calculadora.calcular(10.3, 5.1, "-")).to eql("10.3 - 5.1 = 5.2")
    end

    #MULTIPLICAÇÃO
    it("Multiplicar dois valores 3 e 5") do
        expect(calculadora.calcular(3, 5, "*")).to eql("3 * 5 = 15")
    end

    it("Multiplicar dois valores com um negativo -3 e 4") do
        expect(calculadora.calcular(-3, 4, "*")).to eql("-3 * 4 = -12")
    end

    it("Multiplicar dois valores flutuantes 3.3 e 5.2") do
        expect(calculadora.calcular(3.3, 5.2, "*")).to eql("3.3 * 5.2 = 17.16")
    end

    #DIVISÃO
    it("Dividir dois valores 20 por 2") do
        expect(calculadora.calcular(20, 2, "/")).to eql("20 / 2 = 10")
    end

    it("Dividir dois valores com um negativo -12 por 2") do
        expect(calculadora.calcular(-12, 2, "/")).to eql("-12 / 2 = -6")
    end

    it("Dividir dois valores flutuantes 20.8 por 2.5") do
        expect(calculadora.calcular(20.8, 2.5, "/")).to eql("20.8 / 2.5 = 8.32")
    end

    #POTENCIAÇÃO
    it("Elevar dois valores 2 e 5") do
        expect(calculadora.calcular(2, 5, "**")).to eql("2 ** 5 = 32")
    end

    it("Elevar dois valores com um negativo 2 e -5") do
        expect(calculadora.calcular(2, -5, "**")).to eql("2 ** -5 = 1/32")
    end

    it("Elevar dois valores flutuantes 2.2 e 5.3") do
        expect(calculadora.calcular(2.2, 5.3, "**")).to eql("2.2 ** 5.3 = 65.29")
    end

    #MÓDULO
    it("Resto da divisão de dois valores 10 e 5") do
        expect(calculadora.calcular(10, 5, "%")).to eql("10 % 5 = 0")
    end

    it("Resto da divisão de dois valores com um negativo -10 e 2") do
        expect(calculadora.calcular(-10, 3, "%")).to eql("-10 % 3 = 2")
    end

    it("Resto da divisão de dois valores flutuantes 10.9 e 5.9") do
        expect(calculadora.calcular(10.9, 5.9, "%")).to eql("10.9 % 5.9 = 5.0")
    end


    #EXCEÇÕES
    it("Inserir um operador inválido") do
        expect(calculadora.calcular(10, 5, "a")).to eql("Operador desconhecido!")
    end

    it("Inserir um valor diferente de Integer ou Float") do
        expect(calculadora.calcular("10", 1, "+")).to eql("Valor inserido não é Integer ou Float")
    end

    it("Não inserir um valor necessário como argumento") do
        expect{calculadora.calcular(10, 5)}.to raise_error(ArgumentError)
    end

    it("Inserir uma quantidade maior de argumentos como parâmetro") do
        expect{calculadora.calcular(10, 5, "+", 1)}.to raise_error(ArgumentError)
    end



end