class Product

	attr_accessor :name, :price, :stock_quantity

	def initialize(name, price)
		@name = name
		@price = price
		@stock_quantity = 0
	end

	#Método para listar todos os produtos existentes
	def list_products

	end
end