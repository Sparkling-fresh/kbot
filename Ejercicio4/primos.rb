class Primos
    def extraer(numero)
        if numero == nil
            return nil 
        elsif numero <= 3
            return [numero] 
        else
            obtenerPrimos(numero)
        end
    end

    def obtenerPrimos(numero)
        primos = Array.new
        for factor in 2..numero
            if esPrimo(factor)
                numeroDividido = numero
                while numeroDividido % factor == 0
                    numeroDividido = numeroDividido / factor
                    primos.push(factor);
                end                
            end
        end
        return primos
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