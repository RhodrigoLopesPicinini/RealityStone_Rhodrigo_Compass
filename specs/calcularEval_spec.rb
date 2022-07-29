require 'rspec'
require '../calculadora-projeto/Calculadora'

describe('Calculadora') do
    let(:calculadora) {Calculadora.new}

    #EXPRESSÕES
    it("Expressão que tenha soma") do
        expect(calculadora.calcularEval("(1+1)+2.3")).to eql("(1+1)+2.3 = 4.3")
    end

    it("Expressão que tenha potenciação") do
        expect(calculadora.calcularEval("((2**3)+10.1/2)")).to eql("((2**3)+10.1/2) = 13.05")
    end
    
    it("Expressão que tenha módulo") do
        expect(calculadora.calcularEval("2*3+1%2.0")).to eql("2*3+1%2.0 = 7.0")
    end

    it("Expressão que tenha multiplicação") do
        expect(calculadora.calcularEval("2.3*2")).to eql("2.3*2 = 4.6")
    end

    it("Expressão que tenha subtração") do
        expect(calculadora.calcularEval("(1+1)*2-1")).to eql("(1+1)*2-1 = 3")
    end
    
    it("Expressão que tenha divisão") do
        expect(calculadora.calcularEval("((2+2))/2")).to eql("((2+2))/2 = 2")
    end

    it("Expressão que tenha todas as operações implementadas") do
        expect(calculadora.calcularEval("(((((1+43)*2)-37)/2.0)**2)%4")).to eql("(((((1+43)*2)-37)/2.0)**2)%4 = 2.25")
    end


    #EXCEÇÕES
    it("Inserir uma letra na expressão") do
        expect(calculadora.calcularEval("a+1")).to eql("Não é possível processar letras na expressão!")
    end

    it("Inserir uma expressão inválida") do
        expect(calculadora.calcularEval("(1*2))+1")).to eql("Valor ou conjunto de valores inseridos incorretamente na expressão!")
    end

    it("Inserir uma expressão inválida") do
        expect(calculadora.calcularEval("((1*2))=2")).to eql("Valor ou conjunto de valores inseridos incorretamente na expressão!")
    end

    it("Não inserir valores como parâmetro") do
        expect{calculadora.calcularEval()}.to raise_error(ArgumentError)
    end

    it("Dividir um número por zero") do
        expect(calculadora.calcularEval("1/0")).to eql("Não é possível dividir um número por zero!")
    end


end