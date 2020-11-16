class Factura
	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end

	def impuestos(subtotal)
		subtotal * 0.08
	end
end

factura = Factura.new

cantidad = 2
precioUnitario = 600

#Subtotal
subtotal = factura.subtotal(cantidad, precioUnitario)
puts "#{cantidad} * $#{precioUnitario} = $#{subtotal}"

#Impuestos
impuestos = factura.impuestos(subtotal)
puts "(%8.0) = $#{impuestos}"