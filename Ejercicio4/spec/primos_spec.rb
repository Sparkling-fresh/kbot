require './primos.rb'

describe Primos do
    it 'nil = nil' do
        primos= Primos.new()
        expect(primos.extraer(nil)).to eq nil
    end

    it '1 = [1]' do
        primos= Primos.new()
        expect(primos.extraer(1)).to eq [1]
    end

    it '2 = [2]' do
        primos= Primos.new()
        expect(primos.extraer(2)).to eq [2]
    end

    it '4 = [2,2]' do
        primos= Primos.new()
        expect(primos.extraer(4)).to eq [2,2]
    end

    it '7 = [7]' do
        primos= Primos.new()
        expect(primos.extraer(7)).to eq [7]
    end

    it '9 = [3,3]' do
        primos= Primos.new()
        expect(primos.extraer(9)).to eq [3,3]
    end

    it '24 = [2,2,2,3]' do
        primos= Primos.new()
        expect(primos.extraer(24)).to eq [2,2,2,3]
    end

    it '48 = [2,2,2,2,3]' do
        primos= Primos.new()
        expect(primos.extraer(48)).to eq [2,2,2,2,3]
    end

    it '56 = [2,2,2,7]' do
        primos= Primos.new()
        expect(primos.extraer(56)).to eq [2,2,2,7]
    end

    it '60 = [2,2,3,5]' do
        primos= Primos.new()
        expect(primos.extraer(60)).to eq [2,2,3,5]
    end

    it '101 = [101]' do
        primos= Primos.new()
        expect(primos.extraer(101)).to eq [101]
    end

    it '144 = [2,2,2,2,3,3]' do
        primos= Primos.new()
        expect(primos.extraer(144)).to eq [2,2,2,2,3,3]
    end
end