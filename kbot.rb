class Factura
	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end

	def impuestos(subtotal)
		subtotal * 0.0825
	end

	def descuento(subtotal)
		if (subtotal < 1000) 
			subtotal * 0
		elsif (subtotal > 1000 and subtotal < 5000)
			subtotal * 0.03
		elsif (subtotal > 5000 and subtotal < 7000)
			subtotal * 0.05
		else
			subtotal * 0.03
		end
	end

	def calcularTotal(subtotalConImpuestos, descuento)
		(subtotalConImpuestos - descuento).round(2)
	end
end

#Inputs
cantidad = ARGV[0].to_i
precioUnitario = ARGV[1].to_i

factura = Factura.new

#Subtotal
subtotal = factura.subtotal(cantidad, precioUnitario)
puts "Subtotal = #{cantidad} * $#{precioUnitario} = $#{subtotal}"

#Impuestos
impuestos = factura.impuestos(subtotal)
subtotalConImpuestos = subtotal + impuestos;
puts "Impuestos CA(%8.25) = $#{impuestos}"

#Descuento
descuento = factura.descuento(subtotalConImpuestos)
puts "Descuento = $#{descuento}"

#Total
total = factura.calcularTotal(subtotalConImpuestos, descuento)
puts "TOTAL = $#{total}"