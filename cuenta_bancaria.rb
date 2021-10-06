class CuentaBancaria
    attr_accessor :nombre , :numero, :vip
    def initialize(nombre , numero , vip = 0)

     @nombre = nombre
     @numero = numero
     @vip = vip
     verificador(numero)
    end
    def verificador(numero)
    raise ArgumentError, 'el numero de cuenta debe ser entero' if numero.class != Integer 
     test1 = @numero.digits
     test2 = test1.count
     raise RangeError, 'la cuenta solo puede tener 8 numeros' if test2 != 8
     puts 'LA CUENTA CUMPLE LOS REQUERIMIENTOS'
    end
    def numero_de_cuenta
      @vip.to_s + '-'  + @numero.to_s
    end  
end

cuenta1 = CuentaBancaria.new('Max', 1, 1)


puts cuenta1.nombre, cuenta1.numero_de_cuenta
