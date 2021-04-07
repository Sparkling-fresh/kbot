class StringCalc
    def calcular(texto)
        if texto == nil then texto = "0" end
        texto.gsub! "\n", ""
        if texto == "" then texto = "0" end
        eval(texto)
    end
end

texto = ARGV[0]

calc = StringCalc.new
calc.calcular texto