require './KBot.rb'

describe KBot do
    it 'Saludo en español a la 10 debería decir "Buen día Luis" ' do
        bot= KBot.new('es')
        expect(bot.saludo('Luis', 10)).to match /Buen día Luis/
    end
    it 'Saludo en ingles a la 10 debería decir "Good morning Luis" ' do
        bot= KBot.new('en')
        expect(bot.saludo('Luis', 10)).to match /Good morning Luis/
    end
 end