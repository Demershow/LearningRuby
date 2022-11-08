class Pessoa
    def falar
        'salve'
    end
    def self.gritar(texto) # método de classe / NÃO precisa instanciar
        "#{texto}!!!"
        texto.upcase
    end
end

p1 = Pessoa.new
puts p1.falar


puts Pessoa.gritar('salve')