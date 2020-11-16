class Factura
	def initialize
		@estados = {'CA' => 0.0825, 'UT' => 0.0685, 'NV' => 0.08, 'TX' => 0.0625}
	end

	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end

	def impuestos(subtotal, estado)
		subtotal * porcentajeEstado(estado)
	end

	def descuento(subtotal)
		if (subtotal < 1000) 
			subtotal * 0
		elsif (subtotal > 1000 and subtotal < 5000)
			subtotal * 0.03
		elsif (subtotal > 5000 and subtotal < 7000)
			subtotal * 0.05
		elsif (subtotal > 7000 and subtotal < 10000)
			subtotal * 0.07
		elsif (subtotal > 10000 and subtotal < 50000)
			subtotal * 0.1
		else
			subtotal * 0.15
		end
	end

	def porcentajeEstado(estado)
		@estados[estado]
	end

	def calcularTotal(subtotalConImpuestos, descuento)
		(subtotalConImpuestos - descuento).round(2)
	end
end

#Inputs
cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_f
estado = ARGV[2]

factura = Factura.new

#Subtotal
subtotal = factura.subtotal(cantidad, precioUnitario)
puts "Subtotal = #{cantidad} * $#{precioUnitario} = $#{subtotal}"

#Impuestos
impuestos = factura.impuestos(subtotal, estado)
subtotalConImpuestos = subtotal + impuestos;
porcentaje = (factura.porcentajeEstado(estado) * 100).round(2)
puts "Impuestos #{estado}(%#{porcentaje}) = $#{impuestos}"

#Descuento
descuento = factura.descuento(subtotalConImpuestos)
puts "Descuento = $#{descuento}"

#Total
total = factura.calcularTotal(subtotalConImpuestos, descuento)
puts "TOTAL = $#{total}"