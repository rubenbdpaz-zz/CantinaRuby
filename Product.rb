class Product

	attr_accessor :name, :price, :stock_quantity

	def initialize(name, price)
		@name = name
		@price = price
		@stock_quantity = 0
	end

	def initialize(name, price, stock_quantity)
		@name = name
		@price = price
		@stock_quantity = stock_quantity
	end

		
end