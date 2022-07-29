require_relative 'Calculadora'

c = Calculadora.new

def definirNumeros
    print "Primeiro valor: "
    v1 = gets.chomp
    if v1.include? "."
        v1 = Float(v1)
    else
        v1 = Integer(v1)
    end
    print "Segundo valor: "
    v2 = gets.chomp
    if v2.include? "."
        v2 = Float(v2)
    else
        v2 = Integer(v2)
    end

    return v1, v2

end

loop do

    begin
        puts "=====================CALCULADORA======================="
        puts "Deseja calcular com qual operador?"
        puts "+    : Soma                     | /  : Divisão      |"
        puts "-    : Subtração                | %  : Módulo       |"
        puts "*    : Multiplicação            | ** : Potênciação  |"
        puts "eval : Insira uma expressão     |"
        puts "x    : Sair                     |"
        puts "======================================================="
        operador = gets.chomp.downcase
        case operador
        when "+"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "+")
        when "-"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "-")
        when "*"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "*")
        when "/"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "/")
        when "%"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "%")
        when "**"
            v1, v2 = definirNumeros
            puts c.calcular(v1, v2, "**")
        when "eval"
            puts "Escreva a expressão que deseja calcular:"
            expr = gets.chomp.to_s
            puts c.calcularEval(expr)
        when "x"
            puts "Saindo..."
            break
        else
            puts "Operador não existe!"
        end

        print "Enter para continuar"
        gets

     #rescue NameError
        #p "Insira valores válidos para a operação"
        #print "Retornando a calculadora, enter para continuar"
        #input = gets
    end

    system("clear") || system("cls")
end





