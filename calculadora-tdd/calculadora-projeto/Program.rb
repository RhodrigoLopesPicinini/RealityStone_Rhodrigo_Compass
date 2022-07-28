require_relative 'Calculadora'

def calcular(v1, v2, op)
    c = Calculadora.new
    case op
    when "+"
        return "Resultado da soma: #{c.somar(v1, v2)}"
    when "-"
        return "Resultado da subtração: #{c.subtrair(v1, v2)}"
    when "*"
        return "Resultado da multiplicação: #{c.multiplicar(v1, v2)}"
    when "/"
        return "Resultado da divisão: #{c.dividir(v1, v2)}"
    end
        
end

puts calcular(2, 2, "/")


