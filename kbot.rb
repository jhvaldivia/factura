class Factura
	def initialize
		@cantidad = 2;
		@precioUnitario = 600;
	end

	def subtotal
		@cantidad * @precioUnitario
	end
end

factura = Factura.new
puts factura.subtotal