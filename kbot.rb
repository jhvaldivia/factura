class Factura
	def subtotal(cantidad, precioUnitario)
		cantidad * precioUnitario
	end
end

factura = Factura.new

subtotal = factura.subtotal(2,600)
puts subtotal