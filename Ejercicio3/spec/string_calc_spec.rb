require './string_calc.rb'

describe StringCalc do
    it 'nil=0' do
        calc= StringCalc.new()
        expect(calc.calcular(nil)).to eq 0
    end
    it '""=0' do
        calc= StringCalc.new()
        expect(calc.calcular("")).to eq 0
    end

    it '“5.2”=5.2' do
        calc= StringCalc.new()
        expect(calc.calcular("5.2")).to eq 5.2
    end

    it '“1+2”=3' do
        calc= StringCalc.new()
        expect(calc.calcular("1+2")).to eq 3
    end

    it '“4+2”=6' do
        calc= StringCalc.new()
        expect(calc.calcular("4+2")).to eq 6
    end

    it '“3+8+7”=18' do
        calc= StringCalc.new()
        expect(calc.calcular("3+8+7")).to eq 18
    end

    it '“3+8+7”=18' do
        calc= StringCalc.new()
        expect(calc.calcular("3+8+7")).to eq 18
    end

    it '“1+2+4\n+5+6”=18' do
        calc= StringCalc.new()
        expect(calc.calcular("1+2+4\n+5+6")).to eq 18
    end

    it '“3+6-4”=5' do
        calc= StringCalc.new()
        expect(calc.calcular("3+6-4")).to eq 5
    end

    it '“31+3\n+6-4”=36' do
        calc= StringCalc.new()
        expect(calc.calcular("31+3\n+6-4")).to eq 36
    end

    it '“(31+3)*(2+6)-4”=268' do
        calc= StringCalc.new()
        expect(calc.calcular("(31+3)*(2+6)-4")).to eq 268
    end

 end