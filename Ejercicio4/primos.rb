class Primos

    def extraer(numero)
        if numero == nil
            nil
        elsif numero <= 3
            [numero]
        else
            obtenerPrimos(numero)
        end
    end

    def obtenerPrimos(numero)
        primos = Array.new
        for factor in 2..numero
            if esPrimo(factor)
                while numero % factor == 0
                    numero = numero / factor
                    primos.push(factor);
                end
                break if numero == 1            
            end
        end
        primos
    end

    def esPrimo(numero)
        for factor in 2..numero
            if numero % factor == 0 && numero != factor
                return false
            end
        end
        return true
    end

end

num = ARGV[0]

primos = Primos.new
primos.extraer num