class Calculadora

    @@invalid = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z","ç"]

    def somar(v1, v2)
        resultado = v1 + v2
        resultado
    end

    def subtrair(v1, v2)
        resultado = v1 - v2
        resultado
    end

    def dividir(v1, v2)
        resultado = v1 / v2
        resultado
    end

    def multiplicar(v1, v2)
        resultado = v1 * v2
        resultado
    end

    def potencia(v1, v2)
        resultado = v1 ** v2
        resultado
    end

    def modulo(v1, v2)
        resultado = v1 % v2
        resultado
    end

    def calcular(v1, v2, op)
        if(v1.class == String or v2.class == String)
            return "Valor inserido não é inteiro ou flutuante"
        
        else
            case op
            when "+"
                return "#{v1} + #{v2} = #{somar(v1, v2)}"
            when "-"
                return "#{v1} - #{v2} = #{subtrair(v1, v2)}"
            when "*"
                return "#{v1} * #{v2} = #{multiplicar(v1, v2)}"
            when "/"
                return "#{v1} / #{v2} = #{dividir(v1, v2)}"
            when "**"
                return "#{v1} ** #{v2} = #{potencia(v1, v2)}"
            when "%"
                return "#{v1} % #{v2} = #{modulo(v1, v2)}"
            end
        end
            
    end

    def calcularEval(expression)
        expressionArray = expression.split("")
        expressionArray.each do |valor|
            if @@invalid[0..@@invalid.length].include?(valor)
                return "Não é possível processar letras na expressão!"
            else
                nil
            end
        end

        "#{expression} = #{eval(expression)}"

    end
end