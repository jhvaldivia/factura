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

#Inputs
cantidad = ARGV[0].to_i
precioUnitario = 600

factura = Factura.new

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