require 'rspec'
require '../calculadora-projeto/Calculadora'

describe('Calculadora') do
    #TESTES DE OPERAÇÕES BÁSICAS EM MÉTODOS SEPARADOS
    let(:calculadora) {Calculadora.new}

    #TESTES DE SOMA
    it("Soma os valores 1 e 4") do
        expect(calculadora.somar(1, 4)).to eq(5)
    end

    it("Soma os valores com um valor negativo -1 e 5") do
        expect(calculadora.somar(-1, 5)).to eq(4)
    end

    it("Soma os valores negativos -3 e -4") do
        expect(calculadora.somar(-3, -4)).to eq(-7)
    end

    it("Soma os valores flutuantes 1.5 e 4.2") do
        expect(calculadora.somar(1.5, 4.2)).to eq(5.7)
    end

    #TESTES DE SUBTRAÇÃO
    it("Subtração dos valores 6 e 2 ") do
        expect(calculadora.subtrair(6, 2)).to eq(4)
    end

    it("Subtração dos valores com um negativo 6 e -6 ") do
        expect(calculadora.subtrair(6, -6)).to eq(12)
    end

    it("Subtração dos valores negativos -6 e -3 ") do
        expect(calculadora.subtrair(-6, -3)).to eq(-3)
    end

    it("Subtração dos valores flutuantes 6.2 e 2.2 ") do
        expect(calculadora.subtrair(6.2, 2.2)).to eq(4.0)
    end

    #TESTES DE MULTIPLICAÇÃO
    it("Multiplicação dos valores 2 e 5") do
        expect(calculadora.multiplicar(2, 5)).to eq(10)
    end

    it("Multiplicação dos valores com um negativo -2 e 10") do
        expect(calculadora.multiplicar(-2, 10)).to eq(-20)
    end

    it("Multiplicação dos valores negativos -3 e -12") do
        expect(calculadora.multiplicar(-3, -12)).to eq(36)
    end

    it("Multiplicação dos valores flutuantes 3.6 e 7.2") do
        expect(calculadora.multiplicar(3.6, 7.2)).to eq(25.92)
    end

    #TESTES DE DIVISÃO
    it("Divisão dos valores 10 e 5") do
        expect(calculadora.dividir(10, 5)).to eq(2)
    end

    it("Divisão dos valores com um negativo -9 e 3") do
        expect(calculadora.dividir(-9, 3)).to eq(-3)
    end

    it("Divisão dos valores negativos -4 e -2") do
        expect(calculadora.dividir(-4, -2)).to eq(2)
    end

    it("Divisão dos valores flutuantes 9.0 e 3.2") do
        expect(calculadora.dividir(9.0, 3.2)).to eq(2.81)
    end

    #TESTES DE POTENCIAÇÃO
    it("Potenciação dos valores 9 elevado a 2") do
        expect(calculadora.potencia(9, 2)).to eq(81)
    end

    it("Potenciação dos valores com um negativo -10 elevado a 3") do
        expect(calculadora.potencia(-10, 3)).to eq(-1000)
    end

    it("Potenciação dos valores flutuantes 4.3 elevado a 5.5") do
        expect(calculadora.potencia(4.3, 5.5)).to eq(3048.43)
    end

    #TESTES DE MÓDULO/RESTO
    it("Módulo/Resto dos valores 2 e 2") do
        expect(calculadora.modulo(2, 2)).to eq(0)
    end

    it("Módulo/Resto dos valores com um negativo -2 e 4") do
        expect(calculadora.modulo(-2, 4)).to eq(2)
    end

    it("Módulo/Resto dos valores negativos -3 e -4") do
        expect(calculadora.modulo(-3, -4)).to eq(-3)
    end

    it("Módulo/Resto dos valores flutuantes 2.2 e 2") do
        expect(calculadora.modulo(2.2, 2)).to eq(0.2)
    end

    #EXCEÇÕES
    it("Quando não inserido valor(es) necessários no parâmetro do método") do
        expect{calculadora.somar()}.to raise_error(ArgumentError)
        expect{calculadora.subtrair(1)}.to raise_error(ArgumentError)
        expect{calculadora.subtrair(1,)}.to raise_error(ArgumentError)
        expect{calculadora.subtrair()}.to raise_error(ArgumentError)
        expect{calculadora.subtrair("1")}.to raise_error(ArgumentError)
    end
end



