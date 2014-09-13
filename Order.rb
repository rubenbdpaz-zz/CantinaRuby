require_relative 'Product.rb'
class Order
	#Array de produtos
	#Código
		#Código único
	#Valor
	#Status
		#Pedido feito - Pedido realizado, mas ainda não chegou a cozinha da cantina
		#Pedido aceito - Pedidos que entraram na cozinha. Sendo preparados
		#Pedido pronto - Pedido já preparado pela cozinha, mas ainda não entregue ao cliente
		#Pedido entregue - Pedido entregue ao cliente

		#Constantes
		REGISTERED = 1
		ACCEPTED = 2
		READY = 3
		DELIVERED = 4


		attr_reader :id
		attr_accessor :value, :status


	def initialize()
		@value = 0
		@status = REGISTERED
		@arr_products = Hash.new
	end

	def add_product(product, quantity)
		if status = REGISTERED
			@arr_products[product] = quantity
		else
			puts "Não foi possivel alterar o pedido."
		end
	end
end
