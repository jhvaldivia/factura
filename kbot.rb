class Factura
	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end

	def impuestos(subtotal)
		subtotal * 0.0825
	end

	def descuento(subtotal)
		subtotal * 0.03
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
puts "Descuento (%3) = $#{descuento}"

#Total
total = subtotalConImpuestos - descuento
puts "TOTAL = $#{total}"