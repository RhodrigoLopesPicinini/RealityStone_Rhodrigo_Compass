class Calculadora

    #Lista de valores inválidos
    @@invalid = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z","ç"]

    #Operações
    def somar(v1, v2)
        resultado = v1 + v2
        floatOrNot(resultado)
    end

    def subtrair(v1, v2)
        resultado = v1 - v2
        floatOrNot(resultado)
    end

    def dividir(v1, v2)
        resultado = v1 / v2
        floatOrNot(resultado)
    end

    def multiplicar(v1, v2)
        resultado = v1 * v2
        floatOrNot(resultado)
    end

    def potencia(v1, v2)
        resultado = v1 ** v2
        floatOrNot(resultado)
    end

    def modulo(v1, v2)
        resultado = v1 % v2
        floatOrNot(resultado)
    end

    #Método calcular, recebe dois valores e o operador e retorna o valor da expressão formada
    def calcular(v1, v2, op)
        begin
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
            else
                return "Operador desconhecido!"
            end
        rescue TypeError
            "Valor inserido não é Integer ou Float"
        end
    end

    #Método calcularEval, recebe uma expressão completa em forma de string e resolve ela a partir do método 'eval'
    def calcularEval(expression)
        begin
            expressionArray = expression.split("")
            #Verifica se a expressão contém algum valor inválido, estabelecido pelo array '@@invalid'
            expressionArray.each do |valor|
                if @@invalid[0..@@invalid.length].include?(valor)
                    return "Não é possível processar letras na expressão!"
                else
                    nil
                end
            end

            "#{expression} = #{eval(expression)}"
        rescue SyntaxError
            "Valor ou conjunto de valores inseridos incorretamente na expressão!"
        end
    end

    def floatOrNot(resultado)
        if resultado.class == Float
            return resultado.round(2)
        else
            return resultado
        end
    end

end