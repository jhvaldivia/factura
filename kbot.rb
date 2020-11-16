class Factura
	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end

	def impuestos(subtotal)
		subtotal * 0.08
	end

	def descuento(subtotal)
		subtotal * 0.03
	end
end

factura = Factura.new

cantidad = 2
precioUnitario = 600

#Subtotal
subtotal = factura.subtotal(cantidad, precioUnitario)
puts "Subtotal: #{cantidad} * $#{precioUnitario} = $#{subtotal}"

#Impuestos
impuestos = factura.impuestos(subtotal)
subtotalConImpuestos = subtotal + impuestos;
puts "Impuestos (%8.0): $#{impuestos}"

#Descuento
descuento = factura.descuento(subtotalConImpuestos)
puts "Descuento (%3): $#{descuento}"