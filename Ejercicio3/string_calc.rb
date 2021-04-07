class StringCalc
    def calcular(texto)
        if texto == nil or texto == ""
            texto = "0"
        end
        eval(texto)
    end
end

texto = ARGV[0]

calc = StringCalc.new
calc.calcular texto