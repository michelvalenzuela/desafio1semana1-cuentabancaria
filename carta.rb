class Carta
    attr_accessor :numero, :pinta
    @@pintas = ['C','D','E','T']
    def initialize(numero = Random.rand(1..13) , pinta= @@pintas.sample)
        @numero = numero
        @pinta = pinta
    end
    def to_s
        "#{@numero} - #{@pinta}"
    end   
end
cinco_cartas = Array.new(5){Carta.new}
cinco_cartas.each do |carta|
  puts carta
end   
  






