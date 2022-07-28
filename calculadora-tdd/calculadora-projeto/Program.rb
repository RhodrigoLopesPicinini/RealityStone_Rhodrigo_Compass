require_relative 'Calculadora'

def calcular(v1, v2, op)
    c = Calculadora.new
    case op
    when "+"
        return "#{v1} + #{v2} = #{c.somar(v1, v2)}"
    when "-"
        return "#{v1} - #{v2} = #{c.subtrair(v1, v2)}"
    when "*"
        return "#{v1} * #{v2} = #{c.multiplicar(v1, v2)}"
    when "/"
        return "#{v1} / #{v2} = #{c.dividir(v1, v2)}"
    when "**"
        return "#{v1} ** #{v2} = #{c.potencia(v1, v2)}"
    when "%"
        return "#{v1} % #{v2} = #{c.modulo(v1, v2)}"
    end
        
end

puts calcular(2, 2, "**")

